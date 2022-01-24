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
struct pci_bus {int number; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int ID_SEL_BEGIN ; 
 int LOONGSON_PCICMD ; 
 int LOONGSON_PCICMD_MABORT_CLR ; 
 int LOONGSON_PCICMD_MTABORT_CLR ; 
 int LOONGSON_PCIMAP_CFG ; 
 int MAX_DEV_NUM ; 
#define  PCI_ACCESS_READ 129 
#define  PCI_ACCESS_WRITE 128 
 int FUNC1 (unsigned int) ; 
 int PCI_IDSEL_CS5536 ; 
 int PCI_MSR_CTRL ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC10(unsigned char access_type,
				      struct pci_bus *bus,
				      unsigned int devfn, int where,
				      u32 *data)
{
	u32 busnum = bus->number;
	u32 addr, type;
	u32 dummy;
	void *addrp;
	int device = FUNC2(devfn);
	int function = FUNC1(devfn);
	int reg = where & ~3;

	if (busnum == 0) {
		/* board-specific part,currently,only fuloong2f,yeeloong2f
		 * use CS5536, fuloong2e use via686b, gdium has no
		 * south bridge
		 */
#ifdef CONFIG_CS5536
		/* cs5536_pci_conf_read4/write4() will call _rdmsr/_wrmsr() to
		 * access the regsters PCI_MSR_ADDR, PCI_MSR_DATA_LO,
		 * PCI_MSR_DATA_HI, which is bigger than PCI_MSR_CTRL, so, it
		 * will not go this branch, but the others. so, no calling dead
		 * loop here.
		 */
		if ((PCI_IDSEL_CS5536 == device) && (reg < PCI_MSR_CTRL)) {
			switch (access_type) {
			case PCI_ACCESS_READ:
				*data = cs5536_pci_conf_read4(function, reg);
				break;
			case PCI_ACCESS_WRITE:
				cs5536_pci_conf_write4(function, reg, *data);
				break;
			}
			return 0;
		}
#endif
		/* Type 0 configuration for onboard PCI bus */
		if (device > MAX_DEV_NUM)
			return -1;

		addr = (1 << (device + ID_SEL_BEGIN)) | (function << 8) | reg;
		type = 0;
	} else {
		/* Type 1 configuration for offboard PCI bus */
		addr = (busnum << 16) | (device << 11) | (function << 8) | reg;
		type = 0x10000;
	}

	/* Clear aborts */
	LOONGSON_PCICMD |= LOONGSON_PCICMD_MABORT_CLR | \
				LOONGSON_PCICMD_MTABORT_CLR;

	LOONGSON_PCIMAP_CFG = (addr >> 16) | type;

	/* Flush Bonito register block */
	dummy = LOONGSON_PCIMAP_CFG;
	FUNC7();

	addrp = FUNC0(addr & 0xffff);
	if (access_type == PCI_ACCESS_WRITE)
		FUNC9(FUNC3(*data), addrp);
	else
		*data = FUNC6(FUNC8(addrp));

	/* Detect Master/Target abort */
	if (LOONGSON_PCICMD & (LOONGSON_PCICMD_MABORT_CLR |
			     LOONGSON_PCICMD_MTABORT_CLR)) {
		/* Error occurred */

		/* Clear bits */
		LOONGSON_PCICMD |= (LOONGSON_PCICMD_MABORT_CLR |
				  LOONGSON_PCICMD_MTABORT_CLR);

		return -1;
	}

	return 0;

}