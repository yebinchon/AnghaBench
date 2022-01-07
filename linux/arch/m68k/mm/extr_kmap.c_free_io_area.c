
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {void* addr; scalar_t__ size; struct vm_struct* next; } ;


 unsigned long IO_SIZE ;
 int __iounmap (void*,scalar_t__) ;
 struct vm_struct* iolist ;
 int kfree (struct vm_struct*) ;

__attribute__((used)) static inline void free_io_area(void *addr)
{
 struct vm_struct **p, *tmp;

 if (!addr)
  return;
 addr = (void *)((unsigned long)addr & -IO_SIZE);
 for (p = &iolist ; (tmp = *p) ; p = &tmp->next) {
  if (tmp->addr == addr) {
   *p = tmp->next;

   __iounmap(tmp->addr, tmp->size - IO_SIZE);
   kfree(tmp);
   return;
  }
 }
}
