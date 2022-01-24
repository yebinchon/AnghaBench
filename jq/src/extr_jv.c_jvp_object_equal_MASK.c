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
struct object_slot {int /*<<< orphan*/  value; int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_KIND_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct object_slot* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(jv o1, jv o2) {
  int len2 = FUNC4(o2);
  int len1 = 0;
  for (int i=0; i<FUNC6(o1); i++) {
    struct object_slot* slot = FUNC3(o1, i);
    if (FUNC2(slot->string) == JV_KIND_NULL) continue;
    jv* slot2 = FUNC5(o2, slot->string);
    if (!slot2) return 0;
    // FIXME: do less refcounting here
    if (!FUNC1(FUNC0(slot->value), FUNC0(*slot2))) return 0;
    len1++;
  }
  return len1 == len2;
}