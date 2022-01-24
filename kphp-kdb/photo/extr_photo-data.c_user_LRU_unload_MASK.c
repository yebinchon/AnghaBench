#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next_used; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 TYPE_1__* LRU_head ; 
 int /*<<< orphan*/  del_by_LRU ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

int FUNC1 (void) {
  user *u = LRU_head->next_used;
  if (u == LRU_head) {
    return -1;
  }

  del_by_LRU++;
  FUNC0 (u);
  return 0;
}