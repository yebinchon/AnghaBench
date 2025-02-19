
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct metafile {int next; int prev; int num; int data; int * aio; } ;
struct TYPE_6__ {scalar_t__ metafile_index; } ;
typedef TYPE_1__ list_t ;
struct TYPE_8__ {int tot_lists; } ;
struct TYPE_7__ {int fd; } ;


 int FILE_LIST_MAGIC ;
 int FLI_ENTRY_LIST_ID (int) ;
 TYPE_5__ Header ;
 int SEEK_SET ;
 TYPE_2__* Snapshot ;
 int WaitAioArrAdd (int *) ;
 TYPE_1__* __get_list_f (int ,int) ;
 int add_use (int) ;
 int assert (int) ;
 int check_aio_completion (int *) ;
 scalar_t__ compute_crc32 (int,long long) ;
 scalar_t__ crc32_check_mode ;
 int * create_aio_read_connection (int ,int,long long,long long,int *,struct metafile*) ;
 int ct_metafile_aio ;
 int data_metafiles_loaded ;
 int do_postponed (int) ;
 int fprintf (int ,char*,...) ;
 long long get_metafile_offset (int) ;
 long long get_revlist_metafile_offset (int) ;
 long long kfs_read_file (TYPE_2__*,int,long long) ;
 long long lseek (int ,long long,int ) ;
 struct metafile** metafiles ;
 int metafiles_loaded ;
 scalar_t__* revlist_metafiles_crc32 ;
 int revlist_metafiles_loaded ;
 int stderr ;
 long long tot_metafiles_memory ;
 int tot_revlist_metafiles ;
 int verbosity ;
 int vkprintf (int,char*,...) ;
 struct metafile* zmalloc0 (int) ;
 void* zzmalloc (long long) ;

int load_metafile_aio (int x, int use_aio) {

  if (verbosity >= 4) {
    fprintf (stderr, "load_metafile_aio. x = %d, use_aio = %d\n", x, use_aio);
  }
  assert (x >= 0);
  if (!metafiles[x]) {
    metafiles[x] = zmalloc0 (sizeof (struct metafile));
    metafiles[x]->next = -1;
    metafiles[x]->prev = -1;
  }
  long long offset, size;
  if (x <= Header.tot_lists) {
    offset = get_metafile_offset (x);
    assert (offset >= 0);
    size = get_metafile_offset (x + 1) - offset;
    assert (size >= 4);
  } else {
    assert (x <= Header.tot_lists + tot_revlist_metafiles);
    offset = get_revlist_metafile_offset (x - Header.tot_lists - 1);
    assert (offset >= 0);
    size = get_revlist_metafile_offset (x - Header.tot_lists) - offset;
    assert (size >= 4);
  }
  metafiles[x]->num = x;
  if (!metafiles[x]->data) {

    metafiles[x]->data = zzmalloc (size);
    assert (metafiles[x]->data);
    tot_metafiles_memory += size;
  }
  if (use_aio == 0 && !metafiles[x]->aio) {
    assert (lseek (Snapshot->fd, offset, SEEK_SET) == offset);
    assert (kfs_read_file (Snapshot, metafiles[x]->data, size) == size);
    if (crc32_check_mode) {
      if (x <= Header.tot_lists) {
        assert (compute_crc32 (metafiles[x]->data, size - 4) == *(((unsigned *)(metafiles[x]->data)) + (size >> 2) - 1));
      } else {
        assert (compute_crc32 (metafiles[x]->data, size) == revlist_metafiles_crc32[x - Header.tot_lists - 1]);
      }
    }
    add_use (x);
    vkprintf (4, "load success #%d. memory %lld\n", x, tot_metafiles_memory);

    if (x < Header.tot_lists) {
      assert (*(int *)(metafiles[x]->data) == FILE_LIST_MAGIC);

      list_t *L = __get_list_f (FLI_ENTRY_LIST_ID (x), -1);
      vkprintf (4, "L = %p\n", L);
      if (!L || L->metafile_index >= 0) {
        assert (!L || L->metafile_index == x);
        do_postponed (x);
      }
      data_metafiles_loaded ++;
    } else {
      revlist_metafiles_loaded ++;
    }
    metafiles_loaded ++;
    return 1;
  } else {
    struct metafile *meta = metafiles[x];
    if (meta->aio) {
      check_aio_completion (meta->aio);
      if (meta->aio != ((void*)0)) {

        WaitAioArrAdd (meta->aio);
        return -2;
      }
      if (meta->data) {
        return 1;
      } else {
        fprintf (stderr, "Previous AIO query failed at %p (metafile_num = %d), scheduling a new one\n", meta, meta->num);
        meta->data = zzmalloc (size);
        tot_metafiles_memory += size;
      }
    }
    meta->aio = create_aio_read_connection (Snapshot->fd, meta->data, offset, size, &ct_metafile_aio, meta);
    vkprintf (4, "AIO query created\n");
    assert (meta->aio != ((void*)0));

    WaitAioArrAdd (meta->aio);

    return -2;
  }
}
