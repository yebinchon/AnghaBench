
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long METAFILE_MALLOC_THRESHOLD ;
 long allocated_metafiles_size ;
 void* malloc (long) ;
 void* zmalloc (long) ;

__attribute__((used)) static inline void *metafile_alloc (long size) {
  void *ptr = (size >= METAFILE_MALLOC_THRESHOLD ? malloc (size) : zmalloc (size));
  if (ptr) {
    allocated_metafiles_size += size;
  }
  return ptr;
}
