#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpc_query {int dummy; } ;
struct TYPE_6__ {TYPE_1__* h; int /*<<< orphan*/  (* fail_query ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {scalar_t__ op; int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 TYPE_4__* CQ ; 
 scalar_t__ RPC_REQ_ERROR ; 
 scalar_t__ RPC_REQ_ERROR_WRAPPED ; 
 struct rpc_query* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_query*) ; 
 int /*<<< orphan*/  received_answers ; 
 int /*<<< orphan*/  received_bad_answers ; 
 int /*<<< orphan*/  received_errors ; 
 int /*<<< orphan*/  received_expired_answers ; 
 int /*<<< orphan*/  skipped_answers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 TYPE_1__* FUNC7 (int) ; 

void FUNC8 (void) {
  if (CQ->h) {
    FUNC5 (CQ->h);
    CQ->h = 0;
  }
  CQ->h = FUNC7 (sizeof (*(CQ->h)));
  if (FUNC4 (CQ->h) < 0) {
    received_bad_answers ++;
    FUNC6 (3, "Can not fetch header\n");
    skipped_answers ++;
    CQ->fail_query (0, 0, 0);
    return;
  }
  if (CQ->h->op == RPC_REQ_ERROR || CQ->h->op == RPC_REQ_ERROR_WRAPPED) { received_errors ++; }
  else { received_answers ++; }
  
  struct rpc_query *q = FUNC0 (CQ->h->qid);
  if (!q) {
    received_expired_answers ++;
    skipped_answers ++;
    CQ->fail_query (0, 0, 0);
    FUNC6 (3, "Answer for unknown query (qid = %lld)\n", CQ->h->qid);
  } else {
    FUNC1 (q);
    FUNC6 (3, "Query end\n");
  }
}