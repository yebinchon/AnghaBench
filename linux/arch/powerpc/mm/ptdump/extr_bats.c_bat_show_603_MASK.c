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
typedef  int phys_addr_t ;

/* Variables and functions */
 int BPP_RW ; 
 int BPP_RX ; 
 int FUNC0 (int) ; 
 int _PAGE_COHERENT ; 
 int _PAGE_GUARDED ; 
 int _PAGE_NO_CACHE ; 
 int _PAGE_WRITETHRU ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, int idx, u32 lower, u32 upper, bool is_d)
{
	u32 bepi = upper & 0xfffe0000;
	u32 bl = (upper >> 2) & 0x7ff;
	u32 k = upper & 3;
	phys_addr_t brpn = FUNC0(lower);
	u32 size = (bl + 1) << 17;

	FUNC1(m, "%d: ", idx);
	if (k == 0) {
		FUNC2(m, "        -\n");
		return;
	}

	FUNC1(m, "0x%08x-0x%08x ", bepi, bepi + size - 1);
#ifdef CONFIG_PHYS_64BIT
	seq_printf(m, "0x%016llx ", brpn);
#else
	FUNC1(m, "0x%08x ", brpn);
#endif

	if (k == 1)
		FUNC2(m, "User ");
	else if (k == 2)
		FUNC2(m, "Kernel ");
	else
		FUNC2(m, "Kernel/User ");

	if (lower & BPP_RX)
		FUNC2(m, is_d ? "RO " : "EXEC ");
	else if (lower & BPP_RW)
		FUNC2(m, is_d ? "RW " : "EXEC ");
	else
		FUNC2(m, is_d ? "NA " : "NX   ");

	if (lower & _PAGE_WRITETHRU)
		FUNC2(m, "write through ");
	if (lower & _PAGE_NO_CACHE)
		FUNC2(m, "no cache ");
	if (lower & _PAGE_COHERENT)
		FUNC2(m, "coherent ");
	if (lower & _PAGE_GUARDED)
		FUNC2(m, "guarded ");
	FUNC2(m, "\n");
}