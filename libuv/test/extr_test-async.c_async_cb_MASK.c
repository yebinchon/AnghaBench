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
typedef  int /*<<< orphan*/  uv_async_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  async ; 
 int async_cb_called ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  prepare ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_async_t* handle) {
  int n;

  FUNC0(handle == &async);

  FUNC2(&mutex);
  n = ++async_cb_called;
  FUNC3(&mutex);

  if (n == 3) {
    FUNC1((uv_handle_t*)&async, close_cb);
    FUNC1((uv_handle_t*)&prepare, close_cb);
  }
}