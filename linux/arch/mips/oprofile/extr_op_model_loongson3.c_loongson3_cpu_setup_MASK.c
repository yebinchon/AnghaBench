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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  reset_counter2; int /*<<< orphan*/  reset_counter1; } ;

/* Variables and functions */
 TYPE_1__ reg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *args)
{
	uint64_t perfcount1, perfcount2;

	perfcount1 = reg.reset_counter1;
	perfcount2 = reg.reset_counter2;
	FUNC0(perfcount1);
	FUNC1(perfcount2);
}