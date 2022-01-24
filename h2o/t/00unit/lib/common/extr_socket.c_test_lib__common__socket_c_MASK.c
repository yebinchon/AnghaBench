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
 int /*<<< orphan*/  test_on_alpn_select ; 
 int /*<<< orphan*/  test_prepare_for_latency_optimization ; 
 int /*<<< orphan*/  test_sliding_counter ; 

void FUNC1(void)
{
    FUNC0("on_alpn_select", test_on_alpn_select);
    FUNC0("sliding_counter", test_sliding_counter);
    FUNC0("prepare_for_latency_optimization", test_prepare_for_latency_optimization);
}