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
typedef  int /*<<< orphan*/  u8 ;
struct acpi_ec_query_handler {int /*<<< orphan*/  node; int /*<<< orphan*/  kref; void* data; int /*<<< orphan*/  func; int /*<<< orphan*/  handle; int /*<<< orphan*/  query_bit; } ;
struct acpi_ec {int /*<<< orphan*/  mutex; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
typedef  int /*<<< orphan*/  acpi_ec_query_func ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct acpi_ec_query_handler* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct acpi_ec *ec, u8 query_bit,
			      acpi_handle handle, acpi_ec_query_func func,
			      void *data)
{
	struct acpi_ec_query_handler *handler =
	    FUNC1(sizeof(struct acpi_ec_query_handler), GFP_KERNEL);

	if (!handler)
		return -ENOMEM;

	handler->query_bit = query_bit;
	handler->handle = handle;
	handler->func = func;
	handler->data = data;
	FUNC3(&ec->mutex);
	FUNC0(&handler->kref);
	FUNC2(&handler->node, &ec->list);
	FUNC4(&ec->mutex);
	return 0;
}