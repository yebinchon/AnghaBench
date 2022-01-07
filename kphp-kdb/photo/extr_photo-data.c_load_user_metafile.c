
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int metafile_len; struct aio_connection* aio; int * metafile; } ;
typedef TYPE_2__ user ;
struct connection {int dummy; } ;
struct aio_connection {void* basic_type; TYPE_2__* extra; } ;
struct TYPE_11__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_9__ {int size; int shift; } ;


 int CLOCK_MONOTONIC ;
 int * EMPTY__METAFILE ;
 int WaitAioArrAdd (struct aio_connection*) ;
 int WaitAioArrClear () ;
 int add_user_used (TYPE_2__*) ;
 int allocated_metafile_bytes ;
 int assert (int) ;
 int check_aio_completion (struct aio_connection*) ;
 struct aio_connection* create_aio_read_connection (int,int *,int ,int,int *,TYPE_2__*) ;
 void* ct_aio ;
 int ct_metafile_aio ;
 int del_user_used (TYPE_2__*) ;
 scalar_t__ dl_get_memory_used () ;
 int * dl_malloc (int) ;
 int* fd ;
 int fprintf (int ,char*,...) ;
 double get_utime (int ) ;
 TYPE_5__ header ;
 int onload_user_metafile (struct connection*,int) ;
 int pread (int,int *,int,int ) ;
 int stderr ;
 scalar_t__ user_loaded (TYPE_2__*) ;
 int verbosity ;

void load_user_metafile (user *u, int local_id, int no_aio) {
  static struct aio_connection empty_aio_conn;

  WaitAioArrClear();

  if (user_loaded (u)) {
    del_user_used (u);
    add_user_used (u);
    return;
  }


  if (local_id > header.user_cnt || header.user_index[local_id].size <= 4) {
    u->metafile = EMPTY__METAFILE;
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
      WaitAioArrAdd (u->aio);
      return;
    }

    if (u->metafile != ((void*)0)) {
      return;
    } else {
      fprintf (stderr, "Previous AIO query failed for user at %p, scheduling a new one\n", u);
    }
  }

  u->metafile_len = header.user_index[local_id].size;
  u->metafile = dl_malloc (u->metafile_len);
  if (u->metafile == ((void*)0)) {
    fprintf (stderr, "no space to load metafile - cannot allocate %d bytes (%lld currently used)\n", u->metafile_len, (long long)dl_get_memory_used());
    assert (0);
  }
  allocated_metafile_bytes += u->metafile_len;

  if (verbosity > 2) {
    fprintf (stderr, "*** Scheduled reading user data from index %d at position %lld, %d bytes, noaio = %d\n", fd[0], header.user_index[local_id].shift, u->metafile_len, no_aio);
  }

  assert (1 <= local_id && local_id <= header.user_cnt);
  if (no_aio) {
    double disk_time = -get_utime (CLOCK_MONOTONIC);


    int size = header.user_index[local_id].size;
    int r = pread (fd[0], u->metafile, size, header.user_index[local_id].shift);
    if (r != size) {
      fprintf (stderr, "error reading user %d from index file: read %d bytes instead of %d at position %lld: %m\n", local_id, r, size, header.user_index[local_id].shift);
      assert (r == size);
    }

    disk_time += get_utime (CLOCK_MONOTONIC);
    if (verbosity > 2) {
      fprintf (stderr, "  disk time = %.6lf\n", disk_time);
    }

    empty_aio_conn.extra = u;
    empty_aio_conn.basic_type = ct_aio;
    u->aio = &empty_aio_conn;

    assert (u->aio != ((void*)0));

    onload_user_metafile ((struct connection *)(&empty_aio_conn), u->metafile_len);
  } else {
    u->aio = create_aio_read_connection (fd[0], u->metafile, header.user_index[local_id].shift, u->metafile_len, &ct_metafile_aio, u);
    assert (u->aio != ((void*)0));
    WaitAioArrAdd (u->aio);
  }

  return;
}
