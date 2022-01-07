
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_info {int flags; unsigned long base; unsigned long size; } ;


 int ENTRY_BEEN_USED ;
 int ENTRY_IN_USE ;
 unsigned long _ALIGN_UP (unsigned long,int ) ;
 int alloc_min ;
 struct alloc_info* alloc_tbl ;
 unsigned long next_base ;
 unsigned long space_left ;
 unsigned long tbl_entries ;

__attribute__((used)) static void *simple_malloc(unsigned long size)
{
 unsigned long i;
 struct alloc_info *p = alloc_tbl;

 if (size == 0)
  goto err_out;

 size = _ALIGN_UP(size, alloc_min);

 for (i=0; i<tbl_entries; i++, p++)
  if (!(p->flags & ENTRY_BEEN_USED)) {
   if (size <= space_left) {
    p->base = next_base;
    p->size = size;
    p->flags = ENTRY_BEEN_USED | ENTRY_IN_USE;
    next_base += size;
    space_left -= size;
    return (void *)p->base;
   }
   goto err_out;
  }

  else if (!(p->flags & ENTRY_IN_USE) && (size <= p->size)) {
   p->flags |= ENTRY_IN_USE;
   return (void *)p->base;
  }
err_out:
 return ((void*)0);
}
