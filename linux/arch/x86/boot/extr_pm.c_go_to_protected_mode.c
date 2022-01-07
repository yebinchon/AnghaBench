
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int code32_start; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 TYPE_2__ boot_params ;
 int die () ;
 int ds () ;
 scalar_t__ enable_a20 () ;
 int mask_all_interrupts () ;
 int protected_mode_jump (int ,scalar_t__) ;
 int puts (char*) ;
 int realmode_switch_hook () ;
 int reset_coprocessor () ;
 int setup_gdt () ;
 int setup_idt () ;

void go_to_protected_mode(void)
{

 realmode_switch_hook();


 if (enable_a20()) {
  puts("A20 gate not responding, unable to boot...\n");
  die();
 }


 reset_coprocessor();


 mask_all_interrupts();


 setup_idt();
 setup_gdt();
 protected_mode_jump(boot_params.hdr.code32_start,
       (u32)&boot_params + (ds() << 4));
}
