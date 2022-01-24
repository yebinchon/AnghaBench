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
typedef  TYPE_1__* ws_t ;
typedef  scalar_t__ ws_private_t ;
struct ws_struct {int dummy; } ;
struct TYPE_4__ {scalar_t__ private_state; int /*<<< orphan*/  on_error; int /*<<< orphan*/  on_recv; int /*<<< orphan*/  send_close; int /*<<< orphan*/  send_frame; int /*<<< orphan*/  send_upgrade; int /*<<< orphan*/  send_connect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ws_on_error ; 
 int /*<<< orphan*/  ws_on_recv ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  ws_send_close ; 
 int /*<<< orphan*/  ws_send_connect ; 
 int /*<<< orphan*/  ws_send_frame ; 
 int /*<<< orphan*/  ws_send_upgrade ; 

ws_t FUNC4() {
  ws_private_t my = FUNC3();
  if (!my) {
    return NULL;
  }
  ws_t self = (ws_t)FUNC0(sizeof(struct ws_struct));
  if (!self) {
    FUNC2(my);
    return NULL;
  }
  FUNC1(self, 0, sizeof(struct ws_struct));
  self->send_connect = ws_send_connect;
  self->send_upgrade = ws_send_upgrade;
  self->send_frame = ws_send_frame;
  self->send_close = ws_send_close;
  self->on_recv = ws_on_recv;
  self->on_error = ws_on_error;
  self->private_state = my;
  return self;
}