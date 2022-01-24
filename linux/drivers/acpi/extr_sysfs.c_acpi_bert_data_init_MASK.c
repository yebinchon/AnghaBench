#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int length; } ;
struct acpi_table_bert {int region_length; int /*<<< orphan*/  address; TYPE_2__ header; } ;
struct acpi_hest_generic_status {int dummy; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_6__ {int size; TYPE_1__ attr; } ;
struct acpi_data_attr {TYPE_3__ attr; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_data_attr*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  tables_data_kobj ; 

__attribute__((used)) static int FUNC2(void *th, struct acpi_data_attr *data_attr)
{
	struct acpi_table_bert *bert = th;

	if (bert->header.length < sizeof(struct acpi_table_bert) ||
	    bert->region_length < sizeof(struct acpi_hest_generic_status)) {
		FUNC0(data_attr);
		return -EINVAL;
	}
	data_attr->addr = bert->address;
	data_attr->attr.size = bert->region_length;
	data_attr->attr.attr.name = "BERT";

	return FUNC1(tables_data_kobj, &data_attr->attr);
}