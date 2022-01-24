#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iterator {scalar_t__ tree_x; scalar_t__ array_x; TYPE_1__* node; } ;
struct TYPE_2__ {int y; } ;

/* Variables and functions */
 int TF_MINUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iterator*) ; 
 int /*<<< orphan*/  FUNC2 (struct iterator*) ; 

__attribute__((used)) static inline void FUNC3 (struct iterator *cur) {
  while (cur->tree_x == cur->array_x && cur->tree_x > 0) {
    FUNC0 ((cur->node->y & 3) == TF_MINUS);
    FUNC2 (cur);
    FUNC1 (cur);
  }
}