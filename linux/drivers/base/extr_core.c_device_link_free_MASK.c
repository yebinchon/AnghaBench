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
struct device_link {int /*<<< orphan*/  supplier; int /*<<< orphan*/  consumer; int /*<<< orphan*/  rpm_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device_link *link)
{
	while (FUNC3(&link->rpm_active))
		FUNC1(link->supplier);

	FUNC2(link->consumer);
	FUNC2(link->supplier);
	FUNC0(link);
}