#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  sysfreq ;
struct TYPE_2__ {int bi_busfreq; int bi_ipbfreq; int /*<<< orphan*/  bi_intfreq; int /*<<< orphan*/  bi_enetaddr; int /*<<< orphan*/  bi_memsize; int /*<<< orphan*/  bi_memstart; } ;

/* Variables and functions */
 TYPE_1__ bd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,int*,int) ; 

__attribute__((used)) static void FUNC8(void)
{
	void *soc, *reg;
	int div;
	u32 sysfreq;


	FUNC2(bd.bi_memstart, bd.bi_memsize);
	FUNC1(bd.bi_enetaddr);
	FUNC0(bd.bi_intfreq, bd.bi_busfreq / 4, bd.bi_busfreq);

	/* Unfortunately, the specific model number is encoded in the
	 * soc node name in existing dts files -- once that is fixed,
	 * this can do a simple path lookup.
	 */
	soc = FUNC5(NULL, "soc");
	if (!soc)
		soc = FUNC4(NULL, "fsl,mpc5200-immr");
	if (!soc)
		soc = FUNC4(NULL, "fsl,mpc5200b-immr");
	if (soc) {
		FUNC7(soc, "bus-frequency", &bd.bi_ipbfreq,
			sizeof(bd.bi_ipbfreq));

		if (!FUNC3(soc, 0, (void*)&reg, NULL))
			return;
		div = FUNC6(reg + 0x204) & 0x0020 ? 8 : 4;
		sysfreq = bd.bi_busfreq * div;
		FUNC7(soc, "system-frequency", &sysfreq, sizeof(sysfreq));
	}
}