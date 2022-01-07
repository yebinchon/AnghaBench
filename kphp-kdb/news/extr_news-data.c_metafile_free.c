
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long METAFILE_MALLOC_THRESHOLD ;
 long allocated_metafiles_size ;
 int free (void*) ;
 int zfree (void*,long) ;

__attribute__((used)) static inline void metafile_free (void *ptr, long size) {
  allocated_metafiles_size -= size;
  if (size >= METAFILE_MALLOC_THRESHOLD) {
    free (ptr);
  } else {
    zfree (ptr, size);
  }
}
