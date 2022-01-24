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
typedef  int /*<<< orphan*/  zero_statbuf ;
typedef  int /*<<< orphan*/  uv_stat_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_fs_poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FIXTURE ; 
 int UV_ENOENT ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  poll_cb_called ; 
 int /*<<< orphan*/  poll_handle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_cb ; 
 int /*<<< orphan*/  timer_handle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(uv_fs_poll_t* handle,
                    int status,
                    const uv_stat_t* prev,
                    const uv_stat_t* curr) {
  uv_stat_t zero_statbuf;

  FUNC2(&zero_statbuf, 0, sizeof(zero_statbuf));

  FUNC0(handle == &poll_handle);
  FUNC0(1 == FUNC6((uv_handle_t*) handle));
  FUNC0(prev != NULL);
  FUNC0(curr != NULL);

  switch (poll_cb_called++) {
  case 0:
    FUNC0(status == UV_ENOENT);
    FUNC0(0 == FUNC1(prev, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC0(0 == FUNC1(curr, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC4(FIXTURE);
    break;

  case 1:
    FUNC0(status == 0);
    FUNC0(0 == FUNC1(prev, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC0(0 != FUNC1(curr, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC0(0 == FUNC7(&timer_handle, timer_cb, 20, 0));
    break;

  case 2:
    FUNC0(status == 0);
    FUNC0(0 != FUNC1(prev, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC0(0 != FUNC1(curr, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC0(0 == FUNC7(&timer_handle, timer_cb, 200, 0));
    break;

  case 3:
    FUNC0(status == 0);
    FUNC0(0 != FUNC1(prev, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC0(0 != FUNC1(curr, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC3(FIXTURE);
    break;

  case 4:
    FUNC0(status == UV_ENOENT);
    FUNC0(0 != FUNC1(prev, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC0(0 == FUNC1(curr, &zero_statbuf, sizeof(zero_statbuf)));
    FUNC5((uv_handle_t*)handle, close_cb);
    break;

  default:
    FUNC0(0);
  }
}