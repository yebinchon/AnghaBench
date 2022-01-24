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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int test_api_is_free_callback_was_called ; 

__attribute__((used)) static void
FUNC2 (void *native_p)
{
  FUNC0 ((uintptr_t) native_p == (uintptr_t) 0x0012345678abcdefull);
  FUNC1 ("ok object free callback\n");

  test_api_is_free_callback_was_called = true;
}