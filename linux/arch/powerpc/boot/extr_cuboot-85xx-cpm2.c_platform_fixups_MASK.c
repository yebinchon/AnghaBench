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
struct TYPE_2__ {int bi_busfreq; int bi_brgfreq; int /*<<< orphan*/  bi_intfreq; int /*<<< orphan*/  bi_enet2addr; int /*<<< orphan*/  bi_enet1addr; int /*<<< orphan*/  bi_enetaddr; int /*<<< orphan*/  bi_memsize; int /*<<< orphan*/  bi_memstart; } ;

/* Variables and functions */
 TYPE_1__ bd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (void*,char*) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int*,int) ; 

__attribute__((used)) static void FUNC7(void)
{
	void *devp;

	FUNC2(bd.bi_memstart, bd.bi_memsize);
	FUNC1("ethernet0", bd.bi_enetaddr);
	FUNC1("ethernet1", bd.bi_enet1addr);
	FUNC1("ethernet2", bd.bi_enet2addr);
	FUNC0(bd.bi_intfreq, bd.bi_busfreq / 8, bd.bi_busfreq);

	/* Unfortunately, the specific model number is encoded in the
	 * soc node name in existing dts files -- once that is fixed,
	 * this can do a simple path lookup.
	 */
	devp = FUNC4(NULL, "soc");
	if (devp) {
		void *serial = NULL;

		FUNC6(devp, "bus-frequency", &bd.bi_busfreq,
		        sizeof(bd.bi_busfreq));

		while ((serial = FUNC4(serial, "serial"))) {
			if (FUNC5(serial) != devp)
				continue;

			FUNC6(serial, "clock-frequency", &bd.bi_busfreq,
			        sizeof(bd.bi_busfreq));
		}
	}

	devp = FUNC3(NULL, "fsl,cpm2-brg");
	if (devp)
		FUNC6(devp, "clock-frequency", &bd.bi_brgfreq,
		        sizeof(bd.bi_brgfreq));
}