
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__page_size (size_t*) ;

int git__mmap_alignment(size_t *alignment)
{
  return git__page_size(alignment);
}
