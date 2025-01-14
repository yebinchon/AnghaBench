
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int full; int ret_stk; int num_pred; int num_cache; scalar_t__ ver; } ;
struct TYPE_7__ {int be; int div_rem; int unalign; int ldd; int atomic; } ;
struct TYPE_6__ {int ver; int dsp; } ;
struct TYPE_5__ {int timer0; int timer1; int gfrc; int rtc; int dual_enb; int dual; } ;
struct bcr_identity {int chip_id; int cpu_id; int family; } ;
struct cpuinfo_arc {TYPE_4__ bpu; TYPE_3__ isa; TYPE_2__ extn_mpy; TYPE_1__ extn; int release; int name; struct bcr_identity core; } ;
struct bcr_lpb {int entries; scalar_t__ ver; } ;


 int ARC_REG_LPB_BUILD ;
 int ARC_REG_LPB_CTRL ;
 int CONFIG_ARC_HAS_LL64 ;
 int CONFIG_ARC_HAS_LLSC ;
 int CONFIG_ARC_TIMERS_64BIT ;
 int CONFIG_ARC_USE_UNALIGNED_MEM_ACCESS ;
 int FIX_PTR (struct cpuinfo_arc*) ;
 int IS_AVAIL1 (int,char*) ;
 int IS_AVAIL2 (int ,char*,int ) ;
 int IS_AVAIL3 (int ,int ,char*) ;
 int IS_DISABLED_RUN (int) ;
 int READ_BCR (int ,struct bcr_lpb) ;
 struct cpuinfo_arc* cpuinfo_arc700 ;
 scalar_t__ is_isa_arcompact () ;
 scalar_t__ is_isa_arcv2 () ;
 unsigned int read_aux_reg (int ) ;
 scalar_t__ scnprintf (char*,int,char*,...) ;

__attribute__((used)) static char *arc_cpu_mumbojumbo(int cpu_id, char *buf, int len)
{
 struct cpuinfo_arc *cpu = &cpuinfo_arc700[cpu_id];
 struct bcr_identity *core = &cpu->core;
 char mpy_opt[16];
 int n = 0;

 FIX_PTR(cpu);

 n += scnprintf(buf + n, len - n,
         "\nIDENTITY\t: ARCVER [%#02x] ARCNUM [%#02x] CHIPID [%#4x]\n",
         core->family, core->cpu_id, core->chip_id);

 n += scnprintf(buf + n, len - n, "processor [%d]\t: %s %s (%s ISA) %s%s%s\n",
         cpu_id, cpu->name, cpu->release,
         is_isa_arcompact() ? "ARCompact" : "ARCv2",
         IS_AVAIL1(cpu->isa.be, "[Big-Endian]"),
         IS_AVAIL3(cpu->extn.dual, cpu->extn.dual_enb, " Dual-Issue "));

 n += scnprintf(buf + n, len - n, "Timers\t\t: %s%s%s%s%s%s\nISA Extn\t: ",
         IS_AVAIL1(cpu->extn.timer0, "Timer0 "),
         IS_AVAIL1(cpu->extn.timer1, "Timer1 "),
         IS_AVAIL2(cpu->extn.rtc, "RTC [UP 64-bit] ", CONFIG_ARC_TIMERS_64BIT),
         IS_AVAIL2(cpu->extn.gfrc, "GFRC [SMP 64-bit] ", CONFIG_ARC_TIMERS_64BIT));

 if (cpu->extn_mpy.ver) {
  if (is_isa_arcompact()) {
   scnprintf(mpy_opt, 16, "mpy");
  } else {

   int opt = 2;

   if (cpu->extn_mpy.dsp)
    opt = cpu->extn_mpy.dsp + 6;

   scnprintf(mpy_opt, 16, "mpy[opt %d] ", opt);
  }
 }

 n += scnprintf(buf + n, len - n, "%s%s%s%s%s%s%s%s\n",
         IS_AVAIL2(cpu->isa.atomic, "atomic ", CONFIG_ARC_HAS_LLSC),
         IS_AVAIL2(cpu->isa.ldd, "ll64 ", CONFIG_ARC_HAS_LL64),
         IS_AVAIL2(cpu->isa.unalign, "unalign ", CONFIG_ARC_USE_UNALIGNED_MEM_ACCESS),
         IS_AVAIL1(cpu->extn_mpy.ver, mpy_opt),
         IS_AVAIL1(cpu->isa.div_rem, "div_rem "));

 if (cpu->bpu.ver) {
  n += scnprintf(buf + n, len - n,
         "BPU\t\t: %s%s match, cache:%d, Predict Table:%d Return stk: %d",
         IS_AVAIL1(cpu->bpu.full, "full"),
         IS_AVAIL1(!cpu->bpu.full, "partial"),
         cpu->bpu.num_cache, cpu->bpu.num_pred, cpu->bpu.ret_stk);

  if (is_isa_arcv2()) {
   struct bcr_lpb lpb;

   READ_BCR(ARC_REG_LPB_BUILD, lpb);
   if (lpb.ver) {
    unsigned int ctl;
    ctl = read_aux_reg(ARC_REG_LPB_CTRL);

    n += scnprintf(buf + n, len - n, " Loop Buffer:%d %s",
            lpb.entries,
            IS_DISABLED_RUN(!ctl));
   }
  }
  n += scnprintf(buf + n, len - n, "\n");
 }

 return buf;
}
