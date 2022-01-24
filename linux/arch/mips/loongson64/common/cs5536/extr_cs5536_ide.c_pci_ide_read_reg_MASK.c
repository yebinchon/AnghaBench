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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CS5536_IDE_CLASS_CODE ; 
 int /*<<< orphan*/  CS5536_IDE_DEVICE_ID ; 
 int /*<<< orphan*/  CS5536_IDE_INTR ; 
 int CS5536_IDE_RANGE ; 
 int /*<<< orphan*/  CS5536_IDE_SUB_ID ; 
 int /*<<< orphan*/  CS5536_SUB_VENDOR_ID ; 
 int /*<<< orphan*/  CS5536_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLCP_SOFT_COM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLIU_PAE ; 
 int /*<<< orphan*/  IDE_CAP ; 
 int /*<<< orphan*/  IDE_CAST ; 
 int /*<<< orphan*/  IDE_CFG ; 
 int /*<<< orphan*/  IDE_DTC ; 
 int /*<<< orphan*/  IDE_ETC ; 
 int /*<<< orphan*/  IDE_INTERNAL_PM ; 
 int /*<<< orphan*/  IDE_IO_BAR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  PCI_BAR4_REG 143 
 int PCI_BASE_ADDRESS_SPACE_IO ; 
#define  PCI_CACHE_LINE_SIZE 142 
#define  PCI_CAPABILITY_LIST 141 
 int PCI_CAPLIST_POINTER ; 
#define  PCI_CARDBUS_CIS 140 
 int PCI_CARDBUS_CIS_POINTER ; 
#define  PCI_CLASS_REVISION 139 
#define  PCI_COMMAND 138 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int /*<<< orphan*/  PCI_DEFAULT_PIN ; 
 int PCI_EXPANSION_ROM_BAR ; 
#define  PCI_IDE_CAST_REG 137 
#define  PCI_IDE_CFG_REG 136 
#define  PCI_IDE_DTC_REG 135 
#define  PCI_IDE_ETC_REG 134 
#define  PCI_IDE_PM_REG 133 
#define  PCI_INTERRUPT_LINE 132 
 int /*<<< orphan*/  PCI_NORMAL_HEADER_TYPE ; 
#define  PCI_ROM_ADDRESS 131 
#define  PCI_STATUS 130 
 int PCI_STATUS_66MHZ ; 
 int PCI_STATUS_DEVSEL_MEDIUM ; 
 int PCI_STATUS_FAST_BACK ; 
 int PCI_STATUS_PARITY ; 
#define  PCI_SUBSYSTEM_VENDOR_ID 129 
#define  PCI_VENDOR_ID 128 
 int /*<<< orphan*/  SB_CTRL ; 
 int /*<<< orphan*/  SB_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int SB_PARE_ERR_FLAG ; 
 int SOFT_BAR_IDE_FLAG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 

u32 FUNC9(int reg)
{
	u32 conf_data = 0;
	u32 hi, lo;

	switch (reg) {
	case PCI_VENDOR_ID:
		conf_data =
		    FUNC2(CS5536_IDE_DEVICE_ID, CS5536_VENDOR_ID);
		break;
	case PCI_COMMAND:
		FUNC7(FUNC5(IDE_IO_BAR), &hi, &lo);
		if (lo & 0xfffffff0)
			conf_data |= PCI_COMMAND_IO;
		FUNC7(FUNC4(GLIU_PAE), &hi, &lo);
		if ((lo & 0x30) == 0x30)
			conf_data |= PCI_COMMAND_MASTER;
		break;
	case PCI_STATUS:
		conf_data |= PCI_STATUS_66MHZ;
		conf_data |= PCI_STATUS_FAST_BACK;
		FUNC7(FUNC6(SB_ERROR), &hi, &lo);
		if (lo & SB_PARE_ERR_FLAG)
			conf_data |= PCI_STATUS_PARITY;
		conf_data |= PCI_STATUS_DEVSEL_MEDIUM;
		break;
	case PCI_CLASS_REVISION:
		FUNC7(FUNC5(IDE_CAP), &hi, &lo);
		conf_data = lo & 0x000000ff;
		conf_data |= (CS5536_IDE_CLASS_CODE << 8);
		break;
	case PCI_CACHE_LINE_SIZE:
		FUNC7(FUNC6(SB_CTRL), &hi, &lo);
		hi &= 0x000000f8;
		conf_data = FUNC0(PCI_NORMAL_HEADER_TYPE, hi);
		break;
	case PCI_BAR4_REG:
		FUNC7(FUNC3(GLCP_SOFT_COM), &hi, &lo);
		if (lo & SOFT_BAR_IDE_FLAG) {
			conf_data = CS5536_IDE_RANGE |
			    PCI_BASE_ADDRESS_SPACE_IO;
			lo &= ~SOFT_BAR_IDE_FLAG;
			FUNC8(FUNC3(GLCP_SOFT_COM), hi, lo);
		} else {
			FUNC7(FUNC5(IDE_IO_BAR), &hi, &lo);
			conf_data = lo & 0xfffffff0;
			conf_data |= 0x01;
			conf_data &= ~0x02;
		}
		break;
	case PCI_CARDBUS_CIS:
		conf_data = PCI_CARDBUS_CIS_POINTER;
		break;
	case PCI_SUBSYSTEM_VENDOR_ID:
		conf_data =
		    FUNC2(CS5536_IDE_SUB_ID, CS5536_SUB_VENDOR_ID);
		break;
	case PCI_ROM_ADDRESS:
		conf_data = PCI_EXPANSION_ROM_BAR;
		break;
	case PCI_CAPABILITY_LIST:
		conf_data = PCI_CAPLIST_POINTER;
		break;
	case PCI_INTERRUPT_LINE:
		conf_data =
		    FUNC1(PCI_DEFAULT_PIN, CS5536_IDE_INTR);
		break;
	case PCI_IDE_CFG_REG:
		FUNC7(FUNC5(IDE_CFG), &hi, &lo);
		conf_data = lo;
		break;
	case PCI_IDE_DTC_REG:
		FUNC7(FUNC5(IDE_DTC), &hi, &lo);
		conf_data = lo;
		break;
	case PCI_IDE_CAST_REG:
		FUNC7(FUNC5(IDE_CAST), &hi, &lo);
		conf_data = lo;
		break;
	case PCI_IDE_ETC_REG:
		FUNC7(FUNC5(IDE_ETC), &hi, &lo);
		conf_data = lo;
		break;
	case PCI_IDE_PM_REG:
		FUNC7(FUNC5(IDE_INTERNAL_PM), &hi, &lo);
		conf_data = lo;
		break;
	default:
		break;
	}

	return conf_data;
}