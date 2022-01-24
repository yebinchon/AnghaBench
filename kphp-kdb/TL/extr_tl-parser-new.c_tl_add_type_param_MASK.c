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
struct tl_type {int flags; int params_num; unsigned long long params_types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1 (struct tl_type *t, int x) {
  FUNC0 (t->flags & 4);
  FUNC0 (t->params_num <= 64); 
  if (x) {
    t->params_types |= (1ull << (t->params_num ++));   
  } else {
    t->params_num ++;
  }
}