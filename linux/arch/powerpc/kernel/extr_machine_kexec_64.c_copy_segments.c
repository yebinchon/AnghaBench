
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IND_DONE ;
 unsigned long IND_FLAGS ;


 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 void* __va (unsigned long) ;
 int copy_page (void*,void*) ;

__attribute__((used)) static void copy_segments(unsigned long ind)
{
 unsigned long entry;
 unsigned long *ptr;
 void *dest;
 void *addr;







 ptr = ((void*)0);
 dest = ((void*)0);

 for (entry = ind; !(entry & IND_DONE); entry = *ptr++) {
  addr = __va(entry & PAGE_MASK);

  switch (entry & IND_FLAGS) {
  case 130:
   dest = addr;
   break;
  case 129:
   ptr = addr;
   break;
  case 128:
   copy_page(dest, addr);
   dest += PAGE_SIZE;
  }
 }
}
