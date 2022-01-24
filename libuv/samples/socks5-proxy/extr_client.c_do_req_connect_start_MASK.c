#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {scalar_t__ rdstate; scalar_t__ wrstate; TYPE_1__ t; } ;
typedef  TYPE_2__ conn ;
struct TYPE_11__ {int /*<<< orphan*/  sx; TYPE_2__ outgoing; TYPE_2__ incoming; } ;
typedef  TYPE_3__ client_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ c_stop ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int s_kill ; 
 int s_req_connect ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(client_ctx *cx) {
  conn *incoming;
  conn *outgoing;
  int err;

  incoming = &cx->incoming;
  outgoing = &cx->outgoing;
  FUNC0(incoming->rdstate == c_stop);
  FUNC0(incoming->wrstate == c_stop);
  FUNC0(outgoing->rdstate == c_stop);
  FUNC0(outgoing->wrstate == c_stop);

  if (!FUNC1(cx->sx, cx, &outgoing->t.addr)) {
    FUNC6("connection not allowed by ruleset");
    /* Send a 'Connection not allowed by ruleset' reply. */
    FUNC3(incoming, "\5\2\0\1\0\0\0\0\0\0", 10);
    return s_kill;
  }

  err = FUNC2(outgoing);
  if (err != 0) {
    FUNC5("connect error: %s\n", FUNC7(err));
    return FUNC4(cx);
  }

  return s_req_connect;
}