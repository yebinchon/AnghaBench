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
struct res_proc_context {int (* preproc ) (struct acpi_resource*,void*) ;int count; int error; void* preproc_data; struct list_head* list; } ;
struct list_head {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  acpi_dev_process_resource ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct res_proc_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *adev,
				    struct list_head *list,
				    int (*preproc)(struct acpi_resource *, void *),
				    void *preproc_data, char *method)
{
	struct res_proc_context c;
	acpi_status status;

	if (!adev || !adev->handle || !FUNC4(list))
		return -EINVAL;

	if (!FUNC2(adev->handle, method))
		return 0;

	c.list = list;
	c.preproc = preproc;
	c.preproc_data = preproc_data;
	c.count = 0;
	c.error = 0;
	status = FUNC3(adev->handle, method,
				     acpi_dev_process_resource, &c);
	if (FUNC0(status)) {
		FUNC1(list);
		return c.error ? c.error : -EIO;
	}

	return c.count;
}