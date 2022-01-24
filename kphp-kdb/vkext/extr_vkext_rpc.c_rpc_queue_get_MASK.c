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
struct rpc_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  queue_tree ; 
 struct rpc_queue** FUNC0 (int /*<<< orphan*/ ,void*) ; 

struct rpc_queue *FUNC1 (long long id) {
  struct rpc_queue **T = FUNC0 (queue_tree, (void *)&id);
  return T ? *T : 0;
}