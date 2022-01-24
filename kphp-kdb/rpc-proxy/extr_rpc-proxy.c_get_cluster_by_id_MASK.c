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
struct rpc_cluster {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  rpc_cluster_tree ; 
 struct rpc_cluster** FUNC0 (int /*<<< orphan*/ ,void*) ; 

struct rpc_cluster *FUNC1 (long long id) {
  struct rpc_cluster **T = FUNC0 (rpc_cluster_tree, (void *)&id);
  return T ? *T : 0;
}