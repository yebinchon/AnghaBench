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
struct intersection_condition_iterator {int /*<<< orphan*/  (* jump_to ) (scalar_t__,int /*<<< orphan*/ ) ;scalar_t__ Cond; } ;
typedef  scalar_t__ iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

iterator_t FUNC3 (iterator_t I) {
  struct intersection_condition_iterator *ICI = (struct intersection_condition_iterator *)I;
  if (ICI->Cond) {
    ICI->jump_to = multiple_intersection_with_condition_jump_to;
  } else {
    ICI->jump_to = multiple_intersection_jump_to;
  }
  ICI->jump_to (I, 0);
  return I;
}