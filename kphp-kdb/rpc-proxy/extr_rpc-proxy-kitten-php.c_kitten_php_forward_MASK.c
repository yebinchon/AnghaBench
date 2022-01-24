#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {TYPE_2__* fd; } ;
struct TYPE_7__ {TYPE_1__* h; } ;
struct TYPE_6__ {int /*<<< orphan*/  new_id; } ;
struct TYPE_5__ {scalar_t__ kitten_php_delay; int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 TYPE_2__* CC ; 
 TYPE_3__* CQ ; 
 long long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct connection* FUNC2 (int) ; 
 int FUNC3 (struct connection*,int /*<<< orphan*/ ,long long,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,TYPE_2__*) ; 

int FUNC6 (void) {
  FUNC5 (2, "forward: CC = %p\n", CC);
  if (FUNC4 ()) {
    return -1;
  }
  if (CQ->h->kitten_php_delay > 0) {
    return FUNC1 (0, 0);
  }
  struct connection *c = FUNC2 (1);
  if (c) {
    FUNC5 (2, "Forwarding: connect = %d\n", c->fd); 
    long long new_qid = FUNC0 (CQ->h->qid);
    return FUNC3 (c, CC->new_id, new_qid, 1);
  } else {
    return -1;
  }
}