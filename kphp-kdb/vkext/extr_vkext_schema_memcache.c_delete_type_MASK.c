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
struct tl_type {int constructors_num; int extra; struct tl_type* constructors; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_type) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  tl_types ; 
 int /*<<< orphan*/  FUNC3 (struct tl_type*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5 (struct tl_type *t) {
  if (!t) { return; }
  if (t->id) {
    FUNC0 (FUNC2 (t->id));
    FUNC4 (t->id);
  }
  if (t->constructors_num && t->constructors) {
    int i;
    for (i = 0; i < t->extra; i++) {
      FUNC1 (t->constructors[i]);
    }
    FUNC3 (t->constructors, t->constructors_num * sizeof (void *));
    FUNC0 (t->constructors_num * sizeof (void *));
  }
  tl_types --;
  FUNC3 (t, sizeof (*t));
  FUNC0 (sizeof (*t));
}