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
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;
struct acpi_table {struct config_item cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct config_item* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  acpi_table_type ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*,char const*,int /*<<< orphan*/ *) ; 
 struct acpi_table* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct config_item *FUNC3(struct config_group *group,
						const char *name)
{
	struct acpi_table *table;

	table = FUNC2(sizeof(*table), GFP_KERNEL);
	if (!table)
		return FUNC0(-ENOMEM);

	FUNC1(&table->cfg, name, &acpi_table_type);
	return &table->cfg;
}