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
struct agp_bridge_data {int dummy; } ;

/* Variables and functions */
 struct agp_bridge_data* agp_bridge ; 
 int /*<<< orphan*/  agp_bridges ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

struct agp_bridge_data *FUNC1(struct pci_dev *pdev)
{
	if (FUNC0(&agp_bridges))
		return NULL;

	return agp_bridge;
}