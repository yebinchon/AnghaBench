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
typedef  int /*<<< orphan*/  uv_idle_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int idle_1_cb_called ; 
 int /*<<< orphan*/  idle_2_cb ; 
 int /*<<< orphan*/  idle_2_cb_started ; 
 int /*<<< orphan*/  idle_2_handle ; 
 int idle_2_is_active ; 
 scalar_t__ idles_1_active ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(uv_idle_t* handle) {
  int r;

  FUNC2(stderr, "%s", "IDLE_1_CB\n");
  FUNC1(stderr);

  FUNC0(handle != NULL);
  FUNC0(idles_1_active > 0);

  /* Init idle_2 and make it active */
  if (!idle_2_is_active && !FUNC7((uv_handle_t*)&idle_2_handle)) {
    r = FUNC4(FUNC3(), &idle_2_handle);
    FUNC0(r == 0);
    r = FUNC5(&idle_2_handle, idle_2_cb);
    FUNC0(r == 0);
    idle_2_is_active = 1;
    idle_2_cb_started++;
  }

  idle_1_cb_called++;

  if (idle_1_cb_called % 5 == 0) {
    r = FUNC6((uv_idle_t*)handle);
    FUNC0(r == 0);
    idles_1_active--;
  }
}