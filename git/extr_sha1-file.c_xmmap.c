
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 void* MAP_FAILED ;
 int _ (char*) ;
 int die_errno (int ) ;
 void* xmmap_gently (void*,size_t,int,int,int,int ) ;

void *xmmap(void *start, size_t length,
 int prot, int flags, int fd, off_t offset)
{
 void *ret = xmmap_gently(start, length, prot, flags, fd, offset);
 if (ret == MAP_FAILED)
  die_errno(_("mmap failed"));
 return ret;
}
