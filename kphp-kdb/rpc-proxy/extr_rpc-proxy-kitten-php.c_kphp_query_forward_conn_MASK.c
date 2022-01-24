#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tl_query_header {long long qid; double custom_timeout; long long actor_id; int /*<<< orphan*/  real_op; } ;
struct connection {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* create_rpc_query ) (long long) ;} ;
struct TYPE_6__ {long long id; TYPE_1__ methods; int /*<<< orphan*/  forwarded_queries; int /*<<< orphan*/  timeout; } ;
struct TYPE_5__ {struct tl_query_header* h; } ;

/* Variables and functions */
 TYPE_3__* CC ; 
 TYPE_2__* CQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  forwarded_queries ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tl_query_header*) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,long long) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,long long,int /*<<< orphan*/ ) ; 

int FUNC9 (struct connection *c, long long new_actor_id, long long new_qid, int advance) {
  FUNC8 (1, "default_query_forward: CC->id = %lld, CC->timeout = %lf\n", CC->id, CC->timeout);
  FUNC0 (c);
  if (FUNC3 ()) {
    return -1;
  }
  CC->forwarded_queries ++;
  forwarded_queries ++;
  long long qid = CQ->h->qid;
  double save_timeout = CQ->h->custom_timeout;
  CQ->h->custom_timeout *= 0.9;

  FUNC7 (c, new_qid);

  struct tl_query_header *h = CQ->h;
  FUNC0 (h->actor_id == CC->id);
  h->qid = new_qid;
  h->actor_id = new_actor_id;
  FUNC6 (h);
  h->qid = qid;
  h->actor_id = CC->id;
  h->custom_timeout = save_timeout;

  FUNC2 (FUNC4 (), advance);
  CC->methods.create_rpc_query (new_qid);

  FUNC5 (CQ->h->real_op);
  return 0;
}