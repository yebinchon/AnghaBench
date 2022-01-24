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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_pbm_info {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int* FUNC3 (struct pci_pbm_info*,unsigned char,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct pci_pbm_info *pbm,
				    unsigned char bus, unsigned int devfn,
				    int where, int size, u32 value)
{
	u32 *addr;

	addr = FUNC3(pbm, bus, devfn, where);
	if (!addr)
		return PCIBIOS_SUCCESSFUL;

	switch (size) {
	case 1:
		if (where < 8) {
			unsigned long align = (unsigned long) addr;
			u16 tmp16;

			align &= ~1;
			FUNC0((u16 *)align, &tmp16);
			if (where & 1) {
				tmp16 &= 0x00ff;
				tmp16 |= value << 8;
			} else {
				tmp16 &= 0xff00;
				tmp16 |= value;
			}
			FUNC1((u16 *)align, tmp16);
		} else
			FUNC2((u8 *)addr, value);
		break;
	case 2:
		if (where < 8) {
			FUNC1((u16 *)addr, value);
		} else {
			FUNC2((u8 *)addr, value & 0xff);
			FUNC2(((u8 *)addr) + 1, value >> 8);
		}
		break;
	case 4:
		FUNC4(pbm, bus, devfn,
					 where, 2, value & 0xffff);
		FUNC4(pbm, bus, devfn,
					 where + 2, 2, value >> 16);
		break;
	}
	return PCIBIOS_SUCCESSFUL;
}