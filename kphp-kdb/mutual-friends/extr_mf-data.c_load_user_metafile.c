
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int metafile_len; struct aio_connection* aio; int * metafile; } ;
typedef TYPE_2__ user ;
struct connection {int dummy; } ;
struct aio_connection {void* basic_type; TYPE_2__* extra; } ;
struct TYPE_9__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_7__ {int size; int shift; } ;


 int SEEK_SET ;
 struct aio_connection* WaitAio ;
 int allocated_metafile_bytes ;
 int assert (int) ;
 int check_aio_completion (struct aio_connection*) ;
 struct aio_connection* create_aio_read_connection (int ,int *,int ,int,int *,TYPE_2__*) ;
 void* ct_aio ;
 int ct_metafile_aio ;
 int * fd ;
 int fprintf (int ,char*,...) ;
 double get_utime (int) ;
 TYPE_5__ header ;
 int lseek (int ,int ,int ) ;
 int onload_user_metafile (struct connection*,int) ;
 int * qmalloc (int) ;
 int read (int ,int *,int) ;
 int stderr ;
 scalar_t__ user_loaded (TYPE_2__*) ;
 int verbosity ;

void load_user_metafile (user *u, int local_id, int no_aio) {
  static struct aio_connection empty_aio_conn;

  WaitAio = ((void*)0);

  if (user_loaded (u)) {
    return;
  }

  if (local_id > header.user_cnt || header.user_index[local_id].size == 0) {
    u->metafile = ((void*)0);
    u->metafile_len = 0;

    empty_aio_conn.extra = u;
    empty_aio_conn.basic_type = ct_aio;
    u->aio = &empty_aio_conn;

    onload_user_metafile ((struct connection *)(&empty_aio_conn), u->metafile_len);
    return;
  }

  if (u->aio != ((void*)0)) {
    check_aio_completion (u->aio);
    if (u->aio != ((void*)0)) {
      WaitAio = u->aio;
      return;
    }

    if (u->metafile) {
      return;
    } else {
      fprintf (stderr, "Previous AIO query failed for user at %p, scheduling a new one\n", u);
    }
  }

  u->metafile_len = header.user_index[local_id].size;
  u->metafile = ((void*)0);

  while (1) {
    u->metafile = qmalloc (u->metafile_len);
    if (u->metafile != ((void*)0)) {
      break;
    }

    fprintf (stderr, "no space to load metafile - cannot allocate %d bytes (%lld currently used)\n", u->metafile_len, allocated_metafile_bytes);
  }

  allocated_metafile_bytes += u->metafile_len;

  if (verbosity > 2) {
    fprintf (stderr, "*** Scheduled reading user data from index at position %lld, %d bytes, noaio = %d\n", header.user_index[local_id].shift, u->metafile_len, no_aio);
  }

  assert (1 <= local_id && local_id <= header.user_cnt);
  if (no_aio) {
    double disk_time = -get_utime (1);

    assert (lseek (fd[0], header.user_index[local_id].shift, SEEK_SET) == header.user_index[local_id].shift);
    int size = header.user_index[local_id].size;
    int r = read (fd[0], u->metafile, size);
    if (r != size) {
      fprintf (stderr, "error reading header from index file: read %d bytes instead of %d at position %lld: %m\n", r, size, header.user_index[local_id].shift);
    }
    assert (r == size);

    disk_time += get_utime (1);
    if (verbosity > 2) {
      fprintf (stderr, "  disk time = %.6lf\n", disk_time);
    }

    empty_aio_conn.extra = u;
    empty_aio_conn.basic_type = ct_aio;
    u->aio = &empty_aio_conn;

    assert (u->aio != ((void*)0));

    onload_user_metafile ((struct connection *)(&empty_aio_conn), u->metafile_len);

    return;
  } else {
    u->aio = create_aio_read_connection (fd[0], u->metafile, header.user_index[local_id].shift, u->metafile_len, &ct_metafile_aio, u);
    assert (u->aio != ((void*)0));
    WaitAio = u->aio;
  }

  return;
}
