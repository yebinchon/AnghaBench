
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {unsigned long size; struct vm_struct* next; void* addr; } ;


 int GFP_KERNEL ;
 unsigned long IO_SIZE ;
 unsigned long KMAP_END ;
 unsigned long KMAP_START ;
 struct vm_struct* iolist ;
 int kfree (struct vm_struct*) ;
 struct vm_struct* kmalloc (int,int ) ;

__attribute__((used)) static struct vm_struct *get_io_area(unsigned long size)
{
 unsigned long addr;
 struct vm_struct **p, *tmp, *area;

 area = kmalloc(sizeof(*area), GFP_KERNEL);
 if (!area)
  return ((void*)0);
 addr = KMAP_START;
 for (p = &iolist; (tmp = *p) ; p = &tmp->next) {
  if (size + addr < (unsigned long)tmp->addr)
   break;
  if (addr > KMAP_END-size) {
   kfree(area);
   return ((void*)0);
  }
  addr = tmp->size + (unsigned long)tmp->addr;
 }
 area->addr = (void *)addr;
 area->size = size + IO_SIZE;
 area->next = *p;
 *p = area;
 return area;
}
