
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ realmode_swtch; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 TYPE_2__ boot_params ;
 int io_delay () ;
 int outb (int,int) ;

__attribute__((used)) static void realmode_switch_hook(void)
{
 if (boot_params.hdr.realmode_swtch) {
  asm volatile("lcallw *%0"
        : : "m" (boot_params.hdr.realmode_swtch)
        : "eax", "ebx", "ecx", "edx");
 } else {
  asm volatile("cli");
  outb(0x80, 0x70);
  io_delay();
 }
}
