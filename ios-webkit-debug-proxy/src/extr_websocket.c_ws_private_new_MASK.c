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
typedef  TYPE_1__* ws_private_t ;
struct ws_private {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; void* data; void* out; void* in; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_READ_HTTP_REQUEST ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

ws_private_t FUNC3() {
  ws_private_t my = (ws_private_t)FUNC1(sizeof(struct ws_private));
  if (my) {
    FUNC2(my, 0, sizeof(struct ws_private));
    my->in = FUNC0();
    my->out = FUNC0();
    my->data = FUNC0();
    my->state = STATE_READ_HTTP_REQUEST;
  }
  return my;
}