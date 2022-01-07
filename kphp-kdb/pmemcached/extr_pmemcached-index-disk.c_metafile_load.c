
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct metafile {char* data; scalar_t__ local_offsets; TYPE_1__* header; scalar_t__ aio; } ;
struct TYPE_4__ {int key_len; int data_len; char* data; } ;
struct TYPE_3__ {scalar_t__ global_offset; scalar_t__ local_offset; scalar_t__ metafile_size; scalar_t__ nrecords; int crc32; } ;


 int MAX_METAFILES ;
 int SEEK_SET ;
 int add_use (int) ;
 int allocated_metafile_bytes ;
 int assert (int) ;
 int crc32_check_and_repair (scalar_t__,scalar_t__,int *,int) ;
 int fprintf (int ,char*,...) ;
 int free_metafiles () ;
 int idx_fd ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 TYPE_2__* metafile_get_entry (int,int) ;
 int metafile_unload_LRU () ;
 struct metafile* metafiles ;
 int metafiles_loaded ;
 scalar_t__ read (int ,scalar_t__,scalar_t__) ;
 int stderr ;
 scalar_t__ use_metafile_crc32 ;
 int verbosity ;
 void* zzmalloc (scalar_t__) ;

int metafile_load (int metafile_number) {
  if (verbosity >= 3) {
    fprintf (stderr, "loading metafile %d\n", metafile_number);
  }
  assert (0 <= metafile_number && metafile_number < MAX_METAFILES);
  struct metafile *meta = &metafiles[metafile_number];
  if (meta->aio) {
    fprintf (stderr, "meta->aio != 0. Dropping data\n");
    meta->aio = 0;
    meta->data = 0;
    meta->local_offsets = 0;
  }
  if (meta->data != 0) {
    return 1;
  }





  free_metafiles ();

  assert (lseek (idx_fd, meta->header->global_offset + meta->header->local_offset, SEEK_SET) == meta->header->global_offset + meta->header->local_offset);
  assert (meta->local_offsets == 0);

  meta->local_offsets = zzmalloc (meta->header->metafile_size);
  while (!meta->local_offsets) {
    if (!metafile_unload_LRU()) {
      fprintf (stderr, "No memory\n");
      return 0;
    }
    meta->local_offsets = zzmalloc (meta->header->metafile_size);
  }

  meta->data = (char *) (meta->local_offsets + meta->header->nrecords);
  assert (read (idx_fd, meta->local_offsets, meta->header->metafile_size) == meta->header->metafile_size);
  if (use_metafile_crc32) {
    crc32_check_and_repair (meta->local_offsets, meta->header->metafile_size, &meta->header->crc32, 1);
  }
  if (verbosity >= 4 && meta->data) {
    int i;
    for (i = 0; i < meta->header->nrecords; i++) {
      fprintf (stderr, "key/data - %d/%d - %s\n", metafile_get_entry (metafile_number, i)->key_len, metafile_get_entry (metafile_number, i)->data_len, metafile_get_entry (metafile_number, i)->data);
    }
  }
  metafiles_loaded++;
  allocated_metafile_bytes += meta->header->metafile_size;
  add_use (metafile_number);
  return 0;
}
