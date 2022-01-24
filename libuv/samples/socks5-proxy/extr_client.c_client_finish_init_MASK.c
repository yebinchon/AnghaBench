#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  loop; int /*<<< orphan*/  idle_timeout; } ;
typedef  TYPE_2__ server_ctx ;
struct TYPE_8__ {int /*<<< orphan*/  tcp; } ;
struct TYPE_10__ {int /*<<< orphan*/  timer_handle; TYPE_1__ handle; int /*<<< orphan*/  idle_timeout; void* wrstate; void* rdstate; scalar_t__ result; TYPE_4__* client; } ;
typedef  TYPE_3__ conn ;
struct TYPE_11__ {TYPE_2__* sx; TYPE_3__ outgoing; TYPE_3__ incoming; int /*<<< orphan*/  parser; int /*<<< orphan*/  state; } ;
typedef  TYPE_4__ client_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* c_stop ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_handshake ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(server_ctx *sx, client_ctx *cx) {
  conn *incoming;
  conn *outgoing;

  cx->sx = sx;
  cx->state = s_handshake;
  FUNC2(&cx->parser);

  incoming = &cx->incoming;
  incoming->client = cx;
  incoming->result = 0;
  incoming->rdstate = c_stop;
  incoming->wrstate = c_stop;
  incoming->idle_timeout = sx->idle_timeout;
  FUNC0(0 == FUNC4(sx->loop, &incoming->timer_handle));

  outgoing = &cx->outgoing;
  outgoing->client = cx;
  outgoing->result = 0;
  outgoing->rdstate = c_stop;
  outgoing->wrstate = c_stop;
  outgoing->idle_timeout = sx->idle_timeout;
  FUNC0(0 == FUNC3(cx->sx->loop, &outgoing->handle.tcp));
  FUNC0(0 == FUNC4(cx->sx->loop, &outgoing->timer_handle));

  /* Wait for the initial packet. */
  FUNC1(incoming);
}