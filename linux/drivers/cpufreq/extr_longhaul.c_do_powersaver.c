
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int SoftBusRatio; unsigned int SoftBusRatio4; unsigned int SoftVID; int EnableSoftVID; int EnableSoftBusRatio; scalar_t__ RevisionKey; scalar_t__ RevisionID; } ;
union msr_longhaul {int val; TYPE_2__ bits; } ;
typedef int u32 ;
struct TYPE_4__ {int address; } ;
struct TYPE_6__ {TYPE_1__ xpm_timer_block; } ;


 int ACPI_FLUSH_CPU_CACHE () ;
 int MSR_VIA_LONGHAUL ;
 TYPE_3__ acpi_gbl_FADT ;
 scalar_t__ can_scale_voltage ;
 int halt () ;
 int inb (int) ;
 int inl (int ) ;
 int rdmsrl (int ,int ) ;
 int revid_errata ;
 int safe_halt () ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void do_powersaver(int cx_address, unsigned int mults_index,
     unsigned int dir)
{
 union msr_longhaul longhaul;
 u32 t;

 rdmsrl(MSR_VIA_LONGHAUL, longhaul.val);

 if (!revid_errata)
  longhaul.bits.RevisionKey = longhaul.bits.RevisionID;
 else
  longhaul.bits.RevisionKey = 0;
 longhaul.bits.SoftBusRatio = mults_index & 0xf;
 longhaul.bits.SoftBusRatio4 = (mults_index & 0x10) >> 4;

 if (can_scale_voltage)
  longhaul.bits.SoftVID = (mults_index >> 8) & 0x1f;

 safe_halt();

 if (can_scale_voltage && dir) {
  longhaul.bits.EnableSoftVID = 1;
  wrmsrl(MSR_VIA_LONGHAUL, longhaul.val);

  if (!cx_address) {
   ACPI_FLUSH_CPU_CACHE();
   halt();
  } else {
   ACPI_FLUSH_CPU_CACHE();

   inb(cx_address);


   t = inl(acpi_gbl_FADT.xpm_timer_block.address);
  }
  longhaul.bits.EnableSoftVID = 0;
  wrmsrl(MSR_VIA_LONGHAUL, longhaul.val);
 }


 longhaul.bits.EnableSoftBusRatio = 1;
 wrmsrl(MSR_VIA_LONGHAUL, longhaul.val);
 if (!cx_address) {
  ACPI_FLUSH_CPU_CACHE();
  halt();
 } else {
  ACPI_FLUSH_CPU_CACHE();

  inb(cx_address);

  t = inl(acpi_gbl_FADT.xpm_timer_block.address);
 }

 longhaul.bits.EnableSoftBusRatio = 0;
 wrmsrl(MSR_VIA_LONGHAUL, longhaul.val);


 if (can_scale_voltage && !dir) {
  longhaul.bits.EnableSoftVID = 1;
  wrmsrl(MSR_VIA_LONGHAUL, longhaul.val);

  if (!cx_address) {
   ACPI_FLUSH_CPU_CACHE();
   halt();
  } else {
   ACPI_FLUSH_CPU_CACHE();

   inb(cx_address);


   t = inl(acpi_gbl_FADT.xpm_timer_block.address);
  }
  longhaul.bits.EnableSoftVID = 0;
  wrmsrl(MSR_VIA_LONGHAUL, longhaul.val);
 }
}
