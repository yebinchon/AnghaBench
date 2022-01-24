#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
struct TYPE_3__ {unsigned long bits; char* size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 unsigned long MMUCR ; 
 unsigned long MMUCR_URB ; 
 int MMUCR_URB_NENTRIES ; 
 unsigned long MMUCR_URB_SHIFT ; 
 unsigned long MMU_CONTEXT_ASID_MASK ; 
 unsigned long MMU_ITLB_ADDRESS_ARRAY ; 
 unsigned long MMU_ITLB_ADDRESS_ARRAY2 ; 
 unsigned long MMU_ITLB_DATA_ARRAY ; 
 unsigned long MMU_ITLB_DATA_ARRAY2 ; 
 unsigned int MMU_TLB_ENTRY_SHIFT ; 
 unsigned long MMU_UTLB_ADDRESS_ARRAY ; 
 unsigned long MMU_UTLB_ADDRESS_ARRAY2 ; 
 unsigned long MMU_UTLB_DATA_ARRAY ; 
 unsigned long MMU_UTLB_DATA_ARRAY2 ; 
 unsigned int TLB_TYPE_ITLB ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,...) ; 
 TYPE_1__* tlb_sizes ; 

__attribute__((used)) static int FUNC8(struct seq_file *file, void *iter)
{
	unsigned int tlb_type = (unsigned int)file->private;
	unsigned long addr1, addr2, data1, data2;
	unsigned long flags;
	unsigned long mmucr;
	unsigned int nentries, entry;
	unsigned int urb;

	mmucr = FUNC1(MMUCR);
	if ((mmucr & 0x1) == 0) {
		FUNC7(file, "address translation disabled\n");
		return 0;
	}

	if (tlb_type == TLB_TYPE_ITLB) {
		addr1 = MMU_ITLB_ADDRESS_ARRAY;
		addr2 = MMU_ITLB_ADDRESS_ARRAY2;
		data1 = MMU_ITLB_DATA_ARRAY;
		data2 = MMU_ITLB_DATA_ARRAY2;
		nentries = 4;
	} else {
		addr1 = MMU_UTLB_ADDRESS_ARRAY;
		addr2 = MMU_UTLB_ADDRESS_ARRAY2;
		data1 = MMU_UTLB_DATA_ARRAY;
		data2 = MMU_UTLB_DATA_ARRAY2;
		nentries = 64;
	}

	FUNC6(flags);
	FUNC4();

	urb = (mmucr & MMUCR_URB) >> MMUCR_URB_SHIFT;

	/* Make the "entry >= urb" test fail. */
	if (urb == 0)
		urb = MMUCR_URB_NENTRIES + 1;

	if (tlb_type == TLB_TYPE_ITLB) {
		addr1 = MMU_ITLB_ADDRESS_ARRAY;
		addr2 = MMU_ITLB_ADDRESS_ARRAY2;
		data1 = MMU_ITLB_DATA_ARRAY;
		data2 = MMU_ITLB_DATA_ARRAY2;
		nentries = 4;
	} else {
		addr1 = MMU_UTLB_ADDRESS_ARRAY;
		addr2 = MMU_UTLB_ADDRESS_ARRAY2;
		data1 = MMU_UTLB_DATA_ARRAY;
		data2 = MMU_UTLB_DATA_ARRAY2;
		nentries = 64;
	}

	FUNC7(file, "entry:     vpn        ppn     asid  size valid wired\n");

	for (entry = 0; entry < nentries; entry++) {
		unsigned long vpn, ppn, asid, size;
		unsigned long valid;
		unsigned long val;
		const char *sz = "    ?";
		int i;

		val = FUNC1(addr1 | (entry << MMU_TLB_ENTRY_SHIFT));
		FUNC3();
		vpn = val & 0xfffffc00;
		valid = val & 0x100;

		val = FUNC1(addr2 | (entry << MMU_TLB_ENTRY_SHIFT));
		FUNC3();
		asid = val & MMU_CONTEXT_ASID_MASK;

		val = FUNC1(data1 | (entry << MMU_TLB_ENTRY_SHIFT));
		FUNC3();
		ppn = (val & 0x0ffffc00) << 4;

		val = FUNC1(data2 | (entry << MMU_TLB_ENTRY_SHIFT));
		FUNC3();
		size = (val & 0xf0) >> 4;

		for (i = 0; i < FUNC0(tlb_sizes); i++) {
			if (tlb_sizes[i].bits == size)
				break;
		}

		if (i != FUNC0(tlb_sizes))
			sz = tlb_sizes[i].size;

		FUNC7(file, "%2d:    0x%08lx 0x%08lx %5lu %s   %s     %s\n",
			   entry, vpn, ppn, asid,
			   sz, valid ? "V" : "-",
			   (urb <= entry) ? "W" : "-");
	}

	FUNC2();
	FUNC5(flags);

	return 0;
}