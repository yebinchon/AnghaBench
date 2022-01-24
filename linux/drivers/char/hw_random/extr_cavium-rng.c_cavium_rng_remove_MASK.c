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
struct pci_dev {int dummy; } ;
struct cavium_rng_pf {int /*<<< orphan*/  control_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct cavium_rng_pf* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct cavium_rng_pf *rng;

	rng = FUNC1(pdev);

	/* Remove the VF */
	FUNC0(pdev);

	/* Disable the RNG hardware and entropy source */
	FUNC2(0, rng->control_status);
}