
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct desc_ptr {unsigned long address; int size; } ;



__attribute__((used)) static void set_gdt(void *newgdt, u16 limit)
{
 struct desc_ptr curgdt;


 curgdt.size = limit;
 curgdt.address = (unsigned long)newgdt;

 __asm__ __volatile__ (
  "lgdtq %0\n"
  : : "m" (curgdt)
  );
}
