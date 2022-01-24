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
struct object_slot {int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int ITER_FINISHED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ JV_KIND_NULL ; 
 int /*<<< orphan*/  JV_KIND_OBJECT ; 
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct object_slot* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(jv object, int iter) {
  FUNC1(FUNC0(object, JV_KIND_OBJECT));
  FUNC1(iter != ITER_FINISHED);
  struct object_slot* slot;
  do {
    iter++;
    if (iter >= FUNC4(object))
      return ITER_FINISHED;
    slot = FUNC3(object, iter);
  } while (FUNC2(slot->string) == JV_KIND_NULL);
  FUNC1(FUNC2(FUNC3(object,iter)->string)
         == JV_KIND_STRING);
  return iter;
}