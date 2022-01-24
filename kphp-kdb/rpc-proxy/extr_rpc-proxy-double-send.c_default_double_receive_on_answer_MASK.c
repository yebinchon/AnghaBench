#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_query {scalar_t__ in_type; int /*<<< orphan*/  old_qid; int /*<<< orphan*/  pid; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  h; } ;

/* Variables and functions */
 TYPE_1__* CQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct connection**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sent_answers ; 
 int /*<<< orphan*/  skipped_answers ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,int /*<<< orphan*/ ) ; 
 scalar_t__ tl_type_conn ; 

void FUNC10 (struct rpc_query *q) {
  struct connection *ca[3];
  int t = FUNC1 (FUNC2 (&q->pid), &q->pid, 2, ca);
  if (t >= 0 && q->in_type == tl_type_conn) {
    int i;
    int p = FUNC5 ();
    for (i = 0; i < t; i ++) {
      struct connection *d = ca[i];
      FUNC9 (d, q->old_qid);
      FUNC8 (CQ->h);
      FUNC3 (FUNC5 (), 0);
      FUNC7 ();
    }
    sent_answers ++;
    FUNC0 (FUNC4 (p) == p);
  } else {
    if (FUNC6 (q->in_type, /*q->in,*/ &q->pid, q->old_qid) < 0) {
      skipped_answers ++;
      return;
    }
    FUNC8 (CQ->h);
    sent_answers ++;

    FUNC3 (FUNC5 (), 1);
    FUNC7 ();
  }
}