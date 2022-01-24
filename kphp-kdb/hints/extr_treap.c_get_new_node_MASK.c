#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* trp_node_ptr ;
struct TYPE_5__ {struct TYPE_5__* l; } ;
typedef  TYPE_1__ trp_node ;

/* Variables and functions */
 int allocated_nodes_cnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* free_nodes ; 
 scalar_t__ free_nodes_cnt ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

trp_node *FUNC2 (void) {
  if (free_nodes_cnt == 0) {
    if (allocated_nodes_cnt < 10000) {
      if (allocated_nodes_cnt < 10) {
        FUNC1 (10);
      } else {
        FUNC1 (allocated_nodes_cnt);
      }
    } else {
      FUNC1 (10000);
    }
  }

  free_nodes_cnt--;
  FUNC0 (free_nodes_cnt >= 0);

  trp_node_ptr res = free_nodes;
  free_nodes = free_nodes->l;
  res->l = NULL;

  return res;
}