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
 int /*<<< orphan*/  test_round_robin ; 
 int /*<<< orphan*/  test_round_robin_weighted ; 
 int /*<<< orphan*/  test_when_backend_down ; 

void FUNC1(void)
{
    FUNC0("when_backend_down", test_when_backend_down);
    FUNC0("round_robin", test_round_robin);
    FUNC0("round_robin_weighted", test_round_robin_weighted);
}