
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixups; } ;


 scalar_t__ _end ;
 unsigned long epapr_magic ;
 unsigned long fdt_addr ;
 int fdt_init (void*) ;
 unsigned long ima_size ;
 int platform_fixups ;
 TYPE_1__ platform_ops ;
 int serial_console_init () ;
 int simple_alloc_init (scalar_t__,unsigned long,int,int) ;

void epapr_platform_init(unsigned long r3, unsigned long r4, unsigned long r5,
    unsigned long r6, unsigned long r7)
{
 epapr_magic = r6;
 ima_size = r7;
 fdt_addr = r3;



 simple_alloc_init(_end, ima_size - (unsigned long)_end, 32, 64);

 fdt_init((void *)fdt_addr);

 serial_console_init();
 platform_ops.fixups = platform_fixups;
}
