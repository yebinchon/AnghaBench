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
struct pci_pbm_info {scalar_t__ pci_first_busno; } ;

/* Variables and functions */
 int FUNC0 (struct pci_pbm_info*) ; 
 int FUNC1 (unsigned char,unsigned int,int) ; 

__attribute__((used)) static void *FUNC2(struct pci_pbm_info *pbm,
				      unsigned char bus,
				      unsigned int devfn,
				      int where)
{
	if (!pbm)
		return NULL;
	bus -= pbm->pci_first_busno;
	return (void *)
		(FUNC0(pbm) |
		 FUNC1(bus, devfn, where));
}