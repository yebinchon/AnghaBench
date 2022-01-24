#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  timer_handle; int /*<<< orphan*/  poll_handle; } ;
typedef  TYPE_1__ connection_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  connection_close_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(connection_context_t* context) {
  FUNC0((uv_handle_t*) &context->poll_handle, connection_close_cb);
  FUNC0((uv_handle_t*) &context->timer_handle, connection_close_cb);
}