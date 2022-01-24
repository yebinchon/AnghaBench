#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _PAGE_COHERENT ; 
 int _PAGE_NO_CACHE ; 
 int _PAGE_WRITETHRU ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m, int idx, u32 lower, u32 upper)
{
	u32 blpi = upper & 0xfffe0000;
	u32 k = (upper >> 2) & 3;
	u32 pp = upper & 3;
	phys_addr_t pbn = FUNC0(lower);
	u32 bsm = lower & 0x3ff;
	u32 size = (bsm + 1) << 17;

	FUNC2(m, "%d: ", idx);
	if (!(lower & 0x40)) {
		FUNC3(m, "        -\n");
		return;
	}

	FUNC2(m, "0x%08x-0x%08x ", blpi, blpi + size - 1);
#ifdef CONFIG_PHYS_64BIT
	seq_printf(m, "0x%016llx ", pbn);
#else
	FUNC2(m, "0x%08x ", pbn);
#endif

	FUNC2(m, "Kernel %s User %s", FUNC1(k & 2, pp), FUNC1(k & 1, pp));

	if (lower & _PAGE_WRITETHRU)
		FUNC3(m, "write through ");
	if (lower & _PAGE_NO_CACHE)
		FUNC3(m, "no cache ");
	if (lower & _PAGE_COHERENT)
		FUNC3(m, "coherent ");
	FUNC3(m, "\n");
}