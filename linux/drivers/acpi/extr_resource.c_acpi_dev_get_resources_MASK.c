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
struct list_head {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 int FUNC0 (struct acpi_device*,struct list_head*,int (*) (struct acpi_resource*,void*),void*,int /*<<< orphan*/ ) ; 

int FUNC1(struct acpi_device *adev, struct list_head *list,
			   int (*preproc)(struct acpi_resource *, void *),
			   void *preproc_data)
{
	return FUNC0(adev, list, preproc, preproc_data,
					METHOD_NAME__CRS);
}