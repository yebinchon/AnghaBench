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
struct object_slot {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct object_slot* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static jv* FUNC4(jv object, jv key) {
  FUNC1(FUNC0(key, JV_KIND_STRING));
  int* bucket = FUNC2(object, key);
  struct object_slot* slot = FUNC3(object, key, bucket);
  if (slot == 0) return 0;
  else return &slot->value;
}