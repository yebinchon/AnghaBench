
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int _dtb_start ;
 scalar_t__ _end ;
 int fdt_init (int ) ;
 int serial_console_init () ;
 int simple_alloc_init (scalar_t__,scalar_t__,int,int) ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5)
{
 u32 heapsize;

 heapsize = 0x8000000 - (u32)_end;
 simple_alloc_init(_end, heapsize, 32, 64);
 fdt_init(_dtb_start);
 serial_console_init();
}
