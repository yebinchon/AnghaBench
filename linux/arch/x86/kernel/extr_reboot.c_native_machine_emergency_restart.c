
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int MRR_BIOS ;
 scalar_t__ REBOOT_WARM ;
 int TB_SHUTDOWN_REBOOT ;
 scalar_t__ __va (int) ;
 int acpi_reboot () ;
 scalar_t__ efi_capsule_pending (int *) ;
 int efi_reboot (scalar_t__,int *) ;
 int emergency_vmx_disable_all () ;
 int idt_invalidate (int *) ;
 int inb (int) ;
 int kb_wait () ;
 int mach_reboot_fixups () ;
 int machine_real_restart (int ) ;
 int outb (int,int) ;
 int port_cf9_safe ;
 int pr_info (char*) ;
 scalar_t__ reboot_emergency ;
 scalar_t__ reboot_mode ;
 int reboot_type ;
 int tboot_shutdown (int ) ;
 int udelay (int) ;

__attribute__((used)) static void native_machine_emergency_restart(void)
{
 int i;
 int attempt = 0;
 int orig_reboot_type = reboot_type;
 unsigned short mode;

 if (reboot_emergency)
  emergency_vmx_disable_all();

 tboot_shutdown(TB_SHUTDOWN_REBOOT);


 mode = reboot_mode == REBOOT_WARM ? 0x1234 : 0;
 *((unsigned short *)__va(0x472)) = mode;





 if (efi_capsule_pending(((void*)0))) {
  pr_info("EFI capsule is pending, forcing EFI reboot.\n");
  reboot_type = 130;
 }

 for (;;) {

  switch (reboot_type) {
  case 134:
   acpi_reboot();
   reboot_type = 129;
   break;

  case 129:
   mach_reboot_fixups();

   for (i = 0; i < 10; i++) {
    kb_wait();
    udelay(50);
    outb(0xfe, 0x64);
    udelay(50);
   }
   if (attempt == 0 && orig_reboot_type == 134) {
    attempt = 1;
    reboot_type = 134;
   } else {
    reboot_type = 130;
   }
   break;

  case 130:
   efi_reboot(reboot_mode, ((void*)0));
   reboot_type = 133;
   break;

  case 133:
   machine_real_restart(MRR_BIOS);


   reboot_type = 131;
   break;

  case 132:
   port_cf9_safe = 1;


  case 131:
   if (port_cf9_safe) {
    u8 reboot_code = reboot_mode == REBOOT_WARM ? 0x06 : 0x0E;
    u8 cf9 = inb(0xcf9) & ~reboot_code;
    outb(cf9|2, 0xcf9);
    udelay(50);

    outb(cf9|reboot_code, 0xcf9);
    udelay(50);
   }
   reboot_type = 128;
   break;

  case 128:
   idt_invalidate(((void*)0));
   __asm__ __volatile__("int3");


   reboot_type = 129;
   break;
  }
 }
}
