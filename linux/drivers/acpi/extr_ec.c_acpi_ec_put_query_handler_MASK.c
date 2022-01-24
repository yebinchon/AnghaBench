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
struct acpi_ec_query_handler {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  acpi_ec_query_handler_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct acpi_ec_query_handler *handler)
{
	FUNC0(&handler->kref, acpi_ec_query_handler_release);
}