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
struct kobject {int dummy; } ;
struct acpi_data_node {int /*<<< orphan*/  kobj_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct acpi_data_node* FUNC1 (struct kobject*) ; 

__attribute__((used)) static void FUNC2(struct kobject *kobj)
{
	struct acpi_data_node *dn = FUNC1(kobj);
	FUNC0(&dn->kobj_done);
}