
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int __copy_oldmem_page (unsigned long,char*,size_t,unsigned long,int,int) ;

ssize_t copy_oldmem_page(unsigned long pfn, char *buf, size_t csize,
    unsigned long offset, int userbuf)
{
 return __copy_oldmem_page(pfn, buf, csize, offset, userbuf, 0);
}
