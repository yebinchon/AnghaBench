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
struct apic_chip_data {int /*<<< orphan*/  clist; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct apic_chip_data* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct apic_chip_data *FUNC2(int node)
{
	struct apic_chip_data *apicd;

	apicd = FUNC1(sizeof(*apicd), GFP_KERNEL, node);
	if (apicd)
		FUNC0(&apicd->clist);
	return apicd;
}