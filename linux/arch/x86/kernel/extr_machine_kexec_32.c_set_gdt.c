
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_ptr {unsigned long address; int size; } ;
typedef int __u16 ;


 int load_gdt (struct desc_ptr*) ;

__attribute__((used)) static void set_gdt(void *newgdt, __u16 limit)
{
 struct desc_ptr curgdt;


 curgdt.size = limit;
 curgdt.address = (unsigned long)newgdt;

 load_gdt(&curgdt);
}
