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
 int /*<<< orphan*/  test_hpack ; 
 int /*<<< orphan*/  test_hpack_dynamic_table ; 
 int /*<<< orphan*/  test_hpack_push ; 
 int /*<<< orphan*/  test_token_wo_hpack_id ; 

void FUNC1(void)
{
    FUNC0("hpack", test_hpack);
    FUNC0("hpack-push", test_hpack_push);
    FUNC0("hpack-dynamic-table", test_hpack_dynamic_table);
    FUNC0("token-wo-hpack-id", test_token_wo_hpack_id);
}