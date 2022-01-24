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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_read_cb ;
typedef  int /*<<< orphan*/  uv_connect_t ;
typedef  int /*<<< orphan*/  uv_alloc_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ fail_cb ; 
 int /*<<< orphan*/  tcp_handle ; 
 int /*<<< orphan*/  timer_cb ; 
 int /*<<< orphan*/  timer_handle ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uv_connect_t* req, int status) {
  FUNC0(0 == status);
  FUNC0(0 == FUNC2(&timer_handle, timer_cb, 50, 0));
  FUNC0(0 == FUNC1((uv_stream_t*) &tcp_handle,
                            (uv_alloc_cb) fail_cb,
                            (uv_read_cb) fail_cb));
}