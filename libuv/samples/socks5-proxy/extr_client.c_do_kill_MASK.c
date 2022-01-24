#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  req; } ;
struct TYPE_7__ {TYPE_1__ t; } ;
struct TYPE_6__ {int state; TYPE_4__ outgoing; TYPE_4__ incoming; } ;
typedef  TYPE_2__ client_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int s_almost_dead_0 ; 
 int s_almost_dead_1 ; 
 scalar_t__ s_req_lookup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(client_ctx *cx) {
  int new_state;

  if (cx->state >= s_almost_dead_0) {
    return cx->state;
  }

  /* Try to cancel the request. The callback still runs but if the
   * cancellation succeeded, it gets called with status=UV_ECANCELED.
   */
  new_state = s_almost_dead_1;
  if (cx->state == s_req_lookup) {
    new_state = s_almost_dead_0;
    FUNC1(&cx->outgoing.t.req);
  }

  FUNC0(&cx->incoming);
  FUNC0(&cx->outgoing);
  return new_state;
}