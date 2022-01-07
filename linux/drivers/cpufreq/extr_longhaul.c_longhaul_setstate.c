
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {int new; void* old; } ;
struct TYPE_8__ {int address; } ;
struct TYPE_7__ {unsigned int driver_data; } ;
struct TYPE_5__ {scalar_t__ bm_control; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;


 int ACPI_BITREG_ARB_DISABLE ;
 int ACPI_BITREG_BUS_MASTER_RLD ;
 int EBUSY ;
 int EINVAL ;



 int USE_ACPI_C3 ;
 int USE_NORTHBRIDGE ;
 scalar_t__ acpi_regs_addr ;
 int acpi_write_bit_register (int ,int) ;
 void* calc_speed (int) ;
 scalar_t__ can_scale_voltage ;
 TYPE_4__* cx ;
 int do_longhaul1 (unsigned int) ;
 int do_powersaver (int ,unsigned int,unsigned int) ;
 int fsb ;
 int highest_speed ;
 unsigned int inb (int) ;
 int inw (scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int longhaul_flags ;
 int longhaul_get_cpu_mult () ;
 unsigned int longhaul_index ;
 TYPE_3__* longhaul_table ;
 int longhaul_version ;
 int lowest_speed ;
 int msleep (int) ;
 int* mults ;
 int outb (unsigned int,int) ;
 int outw (int,scalar_t__) ;
 TYPE_2__* pr ;
 int pr_debug (char*,int ,int,int,int ) ;
 int pr_info (char*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int print_speed (int) ;
 int revid_errata ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int longhaul_setstate(struct cpufreq_policy *policy,
  unsigned int table_index)
{
 unsigned int mults_index;
 int speed, mult;
 struct cpufreq_freqs freqs;
 unsigned long flags;
 unsigned int pic1_mask, pic2_mask;
 u16 bm_status = 0;
 u32 bm_timeout = 1000;
 unsigned int dir = 0;

 mults_index = longhaul_table[table_index].driver_data;

 mult = mults[mults_index & 0x1f];
 if (mult == -1)
  return -EINVAL;

 speed = calc_speed(mult);
 if ((speed > highest_speed) || (speed < lowest_speed))
  return -EINVAL;


 if (can_scale_voltage && longhaul_index < table_index)
  dir = 1;

 freqs.old = calc_speed(longhaul_get_cpu_mult());
 freqs.new = speed;

 pr_debug("Setting to FSB:%dMHz Mult:%d.%dx (%s)\n",
   fsb, mult/10, mult%10, print_speed(speed/1000));
retry_loop:
 preempt_disable();
 local_irq_save(flags);

 pic2_mask = inb(0xA1);
 pic1_mask = inb(0x21);
 outb(0xFF, 0xA1);
 outb(0xFE, 0x21);


 if (acpi_regs_addr && (longhaul_flags & USE_NORTHBRIDGE
     || ((pr != ((void*)0)) && pr->flags.bm_control))) {
  bm_status = inw(acpi_regs_addr);
  bm_status &= 1 << 4;
  while (bm_status && bm_timeout) {
   outw(1 << 4, acpi_regs_addr);
   bm_timeout--;
   bm_status = inw(acpi_regs_addr);
   bm_status &= 1 << 4;
  }
 }

 if (longhaul_flags & USE_NORTHBRIDGE) {

  outb(3, 0x22);
 } else if ((pr != ((void*)0)) && pr->flags.bm_control) {

  acpi_write_bit_register(ACPI_BITREG_ARB_DISABLE, 1);
 }
 switch (longhaul_version) {





 case 130:
  do_longhaul1(mults_index);
  break;
 case 129:
 case 128:
  if (longhaul_flags & USE_ACPI_C3) {

   acpi_write_bit_register(ACPI_BITREG_BUS_MASTER_RLD, 0);
   do_powersaver(cx->address, mults_index, dir);
  } else {
   do_powersaver(0, mults_index, dir);
  }
  break;
 }

 if (longhaul_flags & USE_NORTHBRIDGE) {

  outb(0, 0x22);
 } else if ((pr != ((void*)0)) && pr->flags.bm_control) {

  acpi_write_bit_register(ACPI_BITREG_ARB_DISABLE, 0);
 }
 outb(pic2_mask, 0xA1);
 outb(pic1_mask, 0x21);

 local_irq_restore(flags);
 preempt_enable();

 freqs.new = calc_speed(longhaul_get_cpu_mult());

 if (unlikely(freqs.new != speed)) {
  pr_info("Failed to set requested frequency!\n");




  if (!revid_errata) {
   pr_info("Enabling \"Ignore Revision ID\" option\n");
   revid_errata = 1;
   msleep(200);
   goto retry_loop;
  }




  if (longhaul_flags & USE_ACPI_C3) {
   pr_info("Disabling ACPI C3 support\n");
   longhaul_flags &= ~USE_ACPI_C3;
   if (revid_errata) {
    pr_info("Disabling \"Ignore Revision ID\" option\n");
    revid_errata = 0;
   }
   msleep(200);
   goto retry_loop;
  }




  if (longhaul_version == 129) {
   pr_info("Switching to Longhaul ver. 1\n");
   longhaul_version = 130;
   msleep(200);
   goto retry_loop;
  }
 }

 if (!bm_timeout) {
  pr_info("Warning: Timeout while waiting for idle PCI bus\n");
  return -EBUSY;
 }

 return 0;
}
