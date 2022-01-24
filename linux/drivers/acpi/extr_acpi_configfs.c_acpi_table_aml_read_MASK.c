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
struct acpi_table_header {int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct acpi_table_header* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct acpi_table_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *cfg,
				   void *data, size_t size)
{
	struct acpi_table_header *h = FUNC0(cfg);

	if (!h)
		return -EINVAL;

	if (data)
		FUNC1(data, h, h->length);

	return h->length;
}