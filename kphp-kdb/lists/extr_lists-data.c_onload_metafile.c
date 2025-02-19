
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct metafile {int num; struct aio_connection* aio; scalar_t__ data; } ;
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;
struct TYPE_5__ {scalar_t__ metafile_index; } ;
typedef TYPE_1__ list_t ;
struct TYPE_7__ {int tot_lists; } ;
struct TYPE_6__ {scalar_t__ data; } ;


 int FLI_ENTRY_LIST_ID (int) ;
 TYPE_4__ Header ;
 int Snapshot ;
 TYPE_1__* __get_list_f (int ,int) ;
 int add_use (int) ;
 scalar_t__ aio_errors_verbosity ;
 int assert (int) ;
 scalar_t__ compute_crc32 (scalar_t__,long long) ;
 scalar_t__ crc32_check_mode ;
 scalar_t__ ct_aio ;
 int data_metafiles_loaded ;
 int do_postponed (scalar_t__) ;
 int fprintf (int ,char*,...) ;
 long long get_metafile_offset (int) ;
 long long get_revlist_metafile_offset (int) ;
 int kfs_buffer_crypt (int ,scalar_t__,long long,long long) ;
 TYPE_2__** metafiles ;
 int metafiles_load_errors ;
 int metafiles_load_success ;
 int metafiles_loaded ;
 scalar_t__* revlist_metafiles_crc32 ;
 int revlist_metafiles_loaded ;
 int stderr ;
 int tot_aio_loaded_bytes ;
 long long tot_metafiles_memory ;
 int tot_revlist_metafiles ;
 int total_aio_time ;
 int verbosity ;
 int vkprintf (int,char*,...) ;
 int zzfree (scalar_t__,long long) ;

int onload_metafile (struct connection *c, int read_bytes) {
  vkprintf (4, "onload_metafile(%p,%d) total_aio_time = %lf\n", c, read_bytes, total_aio_time);

  struct aio_connection *a = (struct aio_connection *)c;
  struct metafile *meta = (struct metafile *) a->extra;

  assert (a->basic_type == ct_aio);
  assert (meta != ((void*)0));

  if (meta->aio != a) {
    fprintf (stderr, "assertion (meta->aio == a) will fail\n");
    fprintf (stderr, "%p != %p\n", meta->aio, a);
  }

  assert (meta->aio == a);

  long long size, offset;
  int x = meta->num;
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
  assert (!(size & 3));
  if (crc32_check_mode && read_bytes == size) {
    if (x <= Header.tot_lists) {
      assert (compute_crc32 (metafiles[x]->data, size - 4) == *(((unsigned *)(metafiles[x]->data)) + (size >> 2) - 1));
    } else {
      if (compute_crc32 (metafiles[x]->data, size) != revlist_metafiles_crc32[x - Header.tot_lists - 1]) {
        vkprintf (0, "x = %d, y = %d, total = %d\n", x, x - Header.tot_lists - 1, tot_revlist_metafiles);
      }
      assert (compute_crc32 (metafiles[x]->data, size) == revlist_metafiles_crc32[x - Header.tot_lists - 1]);
    }
  }

  if (read_bytes != size) {
    if (verbosity > 0 || aio_errors_verbosity) {
      fprintf (stderr, "ERROR reading metafile #%d: read %d bytes out of %lld: %m\n", meta->num, read_bytes, size);
    }
  }
  if (verbosity > 2) {
    fprintf (stderr, "*** Read metafile: read %d bytes\n", read_bytes);
  }

  if (read_bytes != size) {
    meta->aio = ((void*)0);
    zzfree (meta->data, size);
    tot_metafiles_memory -= size;
    meta->data = 0;
    metafiles_load_errors ++;
  } else {
    kfs_buffer_crypt (Snapshot, meta->data, size, offset);
    meta->aio = ((void*)0);
    metafiles_loaded ++;
    add_use (meta->num);
    metafiles_load_success ++;
    tot_aio_loaded_bytes += read_bytes;
    if (x <= Header.tot_lists) {

      list_t *L = __get_list_f (FLI_ENTRY_LIST_ID (x), -1);
      if (!L || L->metafile_index >= 0) {
        assert (!L || L->metafile_index == meta->num);
        do_postponed (meta->num);
      }
      data_metafiles_loaded ++;
    } else {
      revlist_metafiles_loaded ++;
    }
  }
  vkprintf (4, "onload_metafile finished\n");
  return 1;
}
