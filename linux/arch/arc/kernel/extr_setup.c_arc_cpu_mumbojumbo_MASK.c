#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int full; int /*<<< orphan*/  ret_stk; int /*<<< orphan*/  num_pred; int /*<<< orphan*/  num_cache; scalar_t__ ver; } ;
struct TYPE_7__ {int be; int div_rem; int /*<<< orphan*/  unalign; int /*<<< orphan*/  ldd; int /*<<< orphan*/  atomic; } ;
struct TYPE_6__ {int ver; int dsp; } ;
struct TYPE_5__ {int timer0; int timer1; int /*<<< orphan*/  gfrc; int /*<<< orphan*/  rtc; int /*<<< orphan*/  dual_enb; int /*<<< orphan*/  dual; } ;
struct bcr_identity {int /*<<< orphan*/  chip_id; int /*<<< orphan*/  cpu_id; int /*<<< orphan*/  family; } ;
struct cpuinfo_arc {TYPE_4__ bpu; TYPE_3__ isa; TYPE_2__ extn_mpy; TYPE_1__ extn; int /*<<< orphan*/  release; int /*<<< orphan*/  name; struct bcr_identity core; } ;
struct bcr_lpb {int /*<<< orphan*/  entries; scalar_t__ ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_REG_LPB_BUILD ; 
 int /*<<< orphan*/  ARC_REG_LPB_CTRL ; 
 int /*<<< orphan*/  CONFIG_ARC_HAS_LL64 ; 
 int /*<<< orphan*/  CONFIG_ARC_HAS_LLSC ; 
 int /*<<< orphan*/  CONFIG_ARC_TIMERS_64BIT ; 
 int /*<<< orphan*/  CONFIG_ARC_USE_UNALIGNED_MEM_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_arc*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bcr_lpb) ; 
 struct cpuinfo_arc* cpuinfo_arc700 ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,int,char*,...) ; 

__attribute__((used)) static char *FUNC10(int cpu_id, char *buf, int len)
{
	struct cpuinfo_arc *cpu = &cpuinfo_arc700[cpu_id];
	struct bcr_identity *core = &cpu->core;
	char mpy_opt[16];
	int n = 0;

	FUNC0(cpu);

	n += FUNC9(buf + n, len - n,
		       "\nIDENTITY\t: ARCVER [%#02x] ARCNUM [%#02x] CHIPID [%#4x]\n",
		       core->family, core->cpu_id, core->chip_id);

	n += FUNC9(buf + n, len - n, "processor [%d]\t: %s %s (%s ISA) %s%s%s\n",
		       cpu_id, cpu->name, cpu->release,
		       FUNC6() ? "ARCompact" : "ARCv2",
		       FUNC1(cpu->isa.be, "[Big-Endian]"),
		       FUNC3(cpu->extn.dual, cpu->extn.dual_enb, " Dual-Issue "));

	n += FUNC9(buf + n, len - n, "Timers\t\t: %s%s%s%s%s%s\nISA Extn\t: ",
		       FUNC1(cpu->extn.timer0, "Timer0 "),
		       FUNC1(cpu->extn.timer1, "Timer1 "),
		       FUNC2(cpu->extn.rtc, "RTC [UP 64-bit] ", CONFIG_ARC_TIMERS_64BIT),
		       FUNC2(cpu->extn.gfrc, "GFRC [SMP 64-bit] ", CONFIG_ARC_TIMERS_64BIT));

	if (cpu->extn_mpy.ver) {
		if (FUNC6()) {
			FUNC9(mpy_opt, 16, "mpy");
		} else {

			int opt = 2;	/* stock MPY/MPYH */

			if (cpu->extn_mpy.dsp)	/* OPT 7-9 */
				opt = cpu->extn_mpy.dsp + 6;

			FUNC9(mpy_opt, 16, "mpy[opt %d] ", opt);
		}
	}

	n += FUNC9(buf + n, len - n, "%s%s%s%s%s%s%s%s\n",
		       FUNC2(cpu->isa.atomic, "atomic ", CONFIG_ARC_HAS_LLSC),
		       FUNC2(cpu->isa.ldd, "ll64 ", CONFIG_ARC_HAS_LL64),
		       FUNC2(cpu->isa.unalign, "unalign ", CONFIG_ARC_USE_UNALIGNED_MEM_ACCESS),
		       FUNC1(cpu->extn_mpy.ver, mpy_opt),
		       FUNC1(cpu->isa.div_rem, "div_rem "));

	if (cpu->bpu.ver) {
		n += FUNC9(buf + n, len - n,
			      "BPU\t\t: %s%s match, cache:%d, Predict Table:%d Return stk: %d",
			      FUNC1(cpu->bpu.full, "full"),
			      FUNC1(!cpu->bpu.full, "partial"),
			      cpu->bpu.num_cache, cpu->bpu.num_pred, cpu->bpu.ret_stk);

		if (FUNC7()) {
			struct bcr_lpb lpb;

			FUNC5(ARC_REG_LPB_BUILD, lpb);
			if (lpb.ver) {
				unsigned int ctl;
				ctl = FUNC8(ARC_REG_LPB_CTRL);

				n += FUNC9(buf + n, len - n, " Loop Buffer:%d %s",
					       lpb.entries,
					       FUNC4(!ctl));
			}
		}
		n += FUNC9(buf + n, len - n, "\n");
	}

	return buf;
}