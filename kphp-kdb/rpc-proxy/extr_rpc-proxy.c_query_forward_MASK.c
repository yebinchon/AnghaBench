#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpc_cluster_bucket {int dummy; } ;
struct TYPE_6__ {int (* forward_target ) (struct rpc_cluster_bucket*,long long) ;} ;
struct TYPE_8__ {TYPE_2__ methods; } ;
struct TYPE_7__ {TYPE_1__* h; } ;
struct TYPE_5__ {int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 TYPE_4__* CC ; 
 TYPE_3__* CQ ; 
 int /*<<< orphan*/  FUNC0 (int (*) (struct rpc_cluster_bucket*,long long)) ; 
 long long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_cluster_bucket*,long long) ; 

int FUNC3 (struct rpc_cluster_bucket B) {
  FUNC0 (CC->methods.forward_target); 
  long long new_qid = FUNC1 (CQ->h->qid);
  return CC->methods.forward_target (&B, new_qid);
}