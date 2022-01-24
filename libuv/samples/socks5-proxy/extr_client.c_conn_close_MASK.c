#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* data; } ;
typedef  TYPE_3__ uv_handle_t ;
struct TYPE_8__ {TYPE_4__* data; } ;
struct TYPE_7__ {TYPE_3__ handle; } ;
struct TYPE_10__ {scalar_t__ rdstate; scalar_t__ wrstate; TYPE_2__ timer_handle; TYPE_1__ handle; } ;
typedef  TYPE_4__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ c_dead ; 
 int /*<<< orphan*/  conn_close_done ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(conn *c) {
  FUNC0(c->rdstate != c_dead);
  FUNC0(c->wrstate != c_dead);
  c->rdstate = c_dead;
  c->wrstate = c_dead;
  c->timer_handle.data = c;
  c->handle.handle.data = c;
  FUNC1(&c->handle.handle, conn_close_done);
  FUNC1((uv_handle_t *) &c->timer_handle, conn_close_done);
}