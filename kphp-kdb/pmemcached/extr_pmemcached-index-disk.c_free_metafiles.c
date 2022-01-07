
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double allocated_metafile_bytes ;
 double memory_for_metafiles ;
 int metafile_unload_LRU () ;

void free_metafiles () {
  while (allocated_metafile_bytes > 0.9 * memory_for_metafiles) {
    if (!metafile_unload_LRU ()) {
      break;
    }
  }
}
