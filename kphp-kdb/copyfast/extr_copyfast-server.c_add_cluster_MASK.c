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

/* Variables and functions */
 long long CLUSTER_MASK ; 
 int /*<<< orphan*/  cluster_tree ; 
 long long* clusters ; 
 scalar_t__ clusters_num ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,long long) ; 

void FUNC3 (long long id) {
  FUNC2 (2, "adding cluster with id = %lld\n", id & CLUSTER_MASK);
  clusters[clusters_num ++] = id & CLUSTER_MASK;
  cluster_tree = FUNC1 (cluster_tree, id & CLUSTER_MASK, FUNC0 (), clusters_num - 1);
}