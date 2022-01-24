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
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  conn_close_cb_called ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  timer_close_cb_called ; 

__attribute__((used)) static void FUNC1(uv_handle_t* handle) {
  if (handle == (uv_handle_t*)&conn)
    conn_close_cb_called++;
  else if (handle == (uv_handle_t*)&timer)
    timer_close_cb_called++;
  else
    FUNC0(0 && "bad handle in close_cb");
}