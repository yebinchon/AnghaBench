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
typedef  int /*<<< orphan*/  uv_timer_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  close_cb ; 
 scalar_t__ nested ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  timer_cb_called ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_timer_t* handle) {
  FUNC0(handle == &timer);
  FUNC0(nested == 0 && "timer_cb must be called from a fresh stack");

  FUNC2("Timeout complete. Now read data...");

  nested++;
  if (FUNC4((uv_stream_t*)&client, alloc_cb, read_cb)) {
    FUNC1("uv_read_start failed");
  }
  nested--;

  timer_cb_called++;

  FUNC3((uv_handle_t*)handle, close_cb);
}