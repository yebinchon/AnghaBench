#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_cluster_bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  tcp_buffers ; 
 int /*<<< orphan*/  FUNC1 (void*,long long) ; 
 int /*<<< orphan*/  FUNC2 (void*,long long) ; 

void FUNC3 (struct rpc_cluster_bucket *B, void *c, long long qid) {
  FUNC0 (c);
  if (!tcp_buffers) {
    FUNC1 (c, qid);
  } else {
    FUNC2 (c, qid);
  }
}