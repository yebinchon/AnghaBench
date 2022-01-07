
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metafile {scalar_t__ data; TYPE_1__* header; scalar_t__ local_offsets; scalar_t__ aio; } ;
struct TYPE_2__ {scalar_t__ metafile_size; } ;


 int MAX_METAFILES ;
 int allocated_metafile_bytes ;
 int assert (int) ;
 int del_use (int) ;
 int fprintf (int ,char*,int) ;
 struct metafile* metafiles ;
 int metafiles_loaded ;
 int stderr ;
 int verbosity ;
 int zzfree (scalar_t__,scalar_t__) ;

int metafile_unload (int metafile_number) {
  assert (0 <= metafile_number && metafile_number < MAX_METAFILES);
  if (verbosity >= 3) {
    fprintf (stderr, "unloading metafile %d\n", metafile_number);
  }
  struct metafile *meta = &metafiles[metafile_number];
  if (meta->data == 0) {
    return -1;
  }
  if (meta->aio) {
    return -1;
  }
  zzfree (meta->local_offsets, meta->header->metafile_size);
  meta->data = 0;
  meta->local_offsets = 0;
  metafiles_loaded--;
  allocated_metafile_bytes -= meta->header->metafile_size;
  del_use (metafile_number);
  return 0;
}
