
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PAGE_SHIFT ;
 int SHM_COLOUR ;

__attribute__((used)) static int get_offset(unsigned int last_mmap)
{
 return (last_mmap & (SHM_COLOUR-1)) >> PAGE_SHIFT;
}
