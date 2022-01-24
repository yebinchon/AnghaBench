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
struct tl_peer {int /*<<< orphan*/  PID; } ;
struct rpc_target {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 struct connection* FUNC0 (struct rpc_target*,int /*<<< orphan*/ *) ; 
 struct rpc_target* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,long long) ; 

int FUNC3 (struct tl_peer *self, long long qid) {
  struct rpc_target *T = FUNC1 (&self->PID);
  if (!T) {
    return -1;
  }
  struct connection *c = FUNC0 (T, &self->PID);
  if (!c) {
    return -1;
  }
  FUNC2 (c, qid);
  return 0;
}