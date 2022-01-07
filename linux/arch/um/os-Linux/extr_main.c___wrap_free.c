
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __real_free (void*) ;
 unsigned long end_vm ;
 unsigned long high_physmem ;
 int kfree (void*) ;
 scalar_t__ kmalloc_ok ;
 unsigned long start_vm ;
 unsigned long uml_physmem ;
 int vfree (void*) ;

void __wrap_free(void *ptr)
{
 unsigned long addr = (unsigned long) ptr;
 if ((addr >= uml_physmem) && (addr < high_physmem)) {
  if (kmalloc_ok)
   kfree(ptr);
 }
 else if ((addr >= start_vm) && (addr < end_vm)) {
  if (kmalloc_ok)
   vfree(ptr);
 }
 else __real_free(ptr);
}
