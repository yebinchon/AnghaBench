
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long get_offset (unsigned int) ;

__attribute__((used)) static unsigned long shared_align_offset(unsigned int last_mmap,
      unsigned long pgoff)
{
 return (get_offset(last_mmap) + pgoff) << PAGE_SHIFT;
}
