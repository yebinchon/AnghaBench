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
struct resource {scalar_t__ end; int /*<<< orphan*/  start; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 struct resource* adapter_rom_resources ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pci_dev*,unsigned short,unsigned short) ; 
 scalar_t__ FUNC3 (unsigned char const*,unsigned short) ; 
 scalar_t__ FUNC4 (struct pci_dev*,unsigned short,unsigned char const*) ; 

__attribute__((used)) static struct resource *FUNC5(struct pci_dev *pdev)
{
	struct resource *oprom = NULL;
	int i;

	for (i = 0; i < FUNC0(adapter_rom_resources); i++) {
		struct resource *res = &adapter_rom_resources[i];
		unsigned short offset, vendor, device, list, rev;
		const unsigned char *rom;

		if (res->end == 0)
			break;

		rom = FUNC1(res->start);
		if (FUNC3(rom + 0x18, offset) != 0)
			continue;

		if (FUNC3(rom + offset + 0x4, vendor) != 0)
			continue;

		if (FUNC3(rom + offset + 0x6, device) != 0)
			continue;

		if (FUNC2(pdev, vendor, device)) {
			oprom = res;
			break;
		}

		if (FUNC3(rom + offset + 0x8, list) == 0 &&
		    FUNC3(rom + offset + 0xc, rev) == 0 &&
		    rev >= 3 && list &&
		    FUNC4(pdev, vendor, rom + offset + list)) {
			oprom = res;
			break;
		}
	}

	return oprom;
}