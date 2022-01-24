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
struct acpi_table_header {int dummy; } ;
struct acpi_table_attr {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC1 (int,struct acpi_table_header**) ; 
 int /*<<< orphan*/  acpi_kobj ; 
 int FUNC2 (int /*<<< orphan*/ ,struct acpi_table_attr*,struct acpi_table_header*) ; 
 int /*<<< orphan*/  acpi_table_attr_list ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  dynamic_tables_kobj ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_attr*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_table_attr* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tables_data_kobj ; 
 int /*<<< orphan*/  tables_kobj ; 

__attribute__((used)) static int FUNC10(void)
{
	struct acpi_table_attr *table_attr;
	struct acpi_table_header *table_header = NULL;
	int table_index;
	acpi_status status;
	int ret;

	tables_kobj = FUNC5("tables", acpi_kobj);
	if (!tables_kobj)
		goto err;

	tables_data_kobj = FUNC5("data", tables_kobj);
	if (!tables_data_kobj)
		goto err_tables_data;

	dynamic_tables_kobj = FUNC5("dynamic", tables_kobj);
	if (!dynamic_tables_kobj)
		goto err_dynamic_tables;

	for (table_index = 0;; table_index++) {
		status = FUNC1(table_index, &table_header);

		if (status == AE_BAD_PARAMETER)
			break;

		if (FUNC0(status))
			continue;

		table_attr = FUNC8(sizeof(*table_attr), GFP_KERNEL);
		if (!table_attr)
			return -ENOMEM;

		ret = FUNC2(tables_kobj,
					   table_attr, table_header);
		if (ret) {
			FUNC4(table_attr);
			return ret;
		}
		FUNC9(&table_attr->node, &acpi_table_attr_list);
		FUNC3(table_header);
	}

	FUNC7(tables_kobj, KOBJ_ADD);
	FUNC7(tables_data_kobj, KOBJ_ADD);
	FUNC7(dynamic_tables_kobj, KOBJ_ADD);

	return 0;
err_dynamic_tables:
	FUNC6(tables_data_kobj);
err_tables_data:
	FUNC6(tables_kobj);
err:
	return -ENOMEM;
}