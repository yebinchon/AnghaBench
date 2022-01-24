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
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static inline u32 FUNC2(struct pci_bus *bus, unsigned int devfn,
				      int where)
{
	u32 ret;

	if (!bus->number) {
		/* type 0 */
		ret = (1 << FUNC1(devfn)) | (FUNC0(devfn) << 8) |
		      (where & ~3);
	} else {
		/* type 1 */
		ret = (bus->number << 16) | (FUNC1(devfn) << 11) |
		      (FUNC0(devfn) << 8) | (where & ~3) | 1;
	}

	return ret;
}