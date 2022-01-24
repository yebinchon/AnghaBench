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
typedef  int /*<<< orphan*/  uv_check_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int check_cb_called ; 
 int /*<<< orphan*/  check_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(uv_check_t* handle) {
  FUNC0(handle == &check_handle);

  check_cb_called++;
  FUNC2(stderr, "check_cb %d\n", check_cb_called);
  FUNC1(stderr);
}