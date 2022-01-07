
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metafile {int data; int * aio; } ;
struct TYPE_2__ {int user_id; int offset; } ;


 int WaitAioArrAdd (int *) ;
 int WaitAioArrClear () ;
 int assert (int) ;
 int check_aio_completion (int *) ;
 int * create_aio_read_connection (int ,int,long long,long,int *,struct metafile*) ;
 int ct_metafile_aio ;
 int fprintf (int ,char*,...) ;
 int free_by_LRU () ;
 int idx_fd ;
 int index_large_data_offset ;
 struct metafile* large_metafiles ;
 TYPE_1__* large_users ;
 int large_users_number ;
 int metafile_alloc (long) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static void load_metafile_aio (int pos) {
  WaitAioArrClear ();


  assert (0 <= pos && pos < large_users_number);
  assert (large_metafiles[pos].data);

  struct metafile *meta = &large_metafiles[pos];
  int user_id = large_users[pos].user_id;
  long data_len = sizeof (long long) * (large_users[pos + 1].offset - large_users[pos].offset);
  long long idx_offset = index_large_data_offset + sizeof (long long) * (long long)large_users[pos].offset;

  if (verbosity >= 2) {
    fprintf (stderr, "loading metafile %d for user %d (%ld bytes at position %lld) in aio mode\n", pos, user_id, data_len, idx_offset);
  }

  if (meta->aio != ((void*)0)) {
    check_aio_completion (meta->aio);
    if (meta->aio != ((void*)0)) {

      WaitAioArrAdd (meta->aio);
      return;
    }

    if (meta->data) {
      return;
    } else {
      fprintf (stderr, "Previous AIO query failed at %p, scheduling a new one\n", meta);
      while (!(meta->data = metafile_alloc (data_len))) {
        assert (free_by_LRU ());
      }
    }
  } else {
    if (verbosity >= 4) {
      fprintf (stderr, "No previous aio found for this metafile\n");
    }
  }

  if (verbosity >= 4) {
    fprintf (stderr, "AIO query creating...\n");
  }
  assert (meta->data);
  meta->aio = create_aio_read_connection (idx_fd, meta->data, idx_offset, data_len, &ct_metafile_aio, meta);
  if (verbosity >= 4) {
    fprintf (stderr, "AIO query created\n");
  }
  assert (meta->aio != ((void*)0));

  WaitAioArrAdd (meta->aio);

  return;
}
