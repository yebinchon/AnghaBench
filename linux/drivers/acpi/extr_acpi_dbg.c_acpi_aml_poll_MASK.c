#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 TYPE_1__ acpi_aml_io ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file, poll_table *wait)
{
	__poll_t masks = 0;

	FUNC2(file, &acpi_aml_io.wait, wait);
	if (FUNC0())
		masks |= EPOLLIN | EPOLLRDNORM;
	if (FUNC1())
		masks |= EPOLLOUT | EPOLLWRNORM;

	return masks;
}