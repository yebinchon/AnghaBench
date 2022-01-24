#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ uv_timer_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  connection_cb_called ; 
 int /*<<< orphan*/  do_accept ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_stream_t* tcp, int status) {
  int r;
  uv_timer_t* timer_handle;

  FUNC0(status == 0);

  timer_handle = (uv_timer_t*)FUNC1(sizeof *timer_handle);
  FUNC0(timer_handle != NULL);

  /* Accept the client after 1 second */
  r = FUNC3(FUNC2(), timer_handle);
  FUNC0(r == 0);

  timer_handle->data = tcp;

  r = FUNC4(timer_handle, do_accept, 1000, 0);
  FUNC0(r == 0);

  connection_cb_called++;
}