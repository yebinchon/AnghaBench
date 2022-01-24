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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_change_weight ; 
 int /*<<< orphan*/  test_dependency ; 
 int /*<<< orphan*/  test_exclusive ; 
 int /*<<< orphan*/  test_exclusive_at_current_pos ; 
 int /*<<< orphan*/  test_firefox ; 
 int /*<<< orphan*/  test_priority ; 
 int /*<<< orphan*/  test_queue ; 
 int /*<<< orphan*/  test_reprioritize ; 
 int test_reprioritize_exclusive ; 
 int /*<<< orphan*/  test_round_robin ; 

void FUNC1(void)
{
    FUNC0("drr", test_queue);
    FUNC0("round-robin", test_round_robin);
    FUNC0("priority", test_priority);
    FUNC0("dependency", test_dependency);
    FUNC0("exclusive", test_exclusive);
    FUNC0("firefox", test_firefox);
    test_reprioritize_exclusive = 0;
    FUNC0("repriortize-nonexclusive", test_reprioritize);
    test_reprioritize_exclusive = 1;
    FUNC0("repriortize-exclusive", test_reprioritize);
    FUNC0("change-weight", test_change_weight);
    FUNC0("exclusive-at-current-pos", test_exclusive_at_current_pos);
}