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
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  prepare_2_close_cb_called ; 
 int /*<<< orphan*/  prepare_2_handle ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(uv_handle_t* handle) {
  FUNC2(stderr, "%s", "PREPARE_2_CLOSE_CB\n");
  FUNC1(stderr);
  FUNC0(handle == (uv_handle_t*)&prepare_2_handle);

  prepare_2_close_cb_called++;
}