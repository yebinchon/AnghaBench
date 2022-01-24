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
typedef  scalar_t__ uint32_t ;
struct object_slot {scalar_t__ hash; int next; int /*<<< orphan*/  value; int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 int /*<<< orphan*/  JV_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct object_slot* FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct object_slot* FUNC5 (int /*<<< orphan*/ ,struct object_slot*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(jv* object, jv key) {
  FUNC1(FUNC0(key, JV_KIND_STRING));
  *object = FUNC6(*object);
  int* bucket = FUNC3(*object, key);
  int* prev_ptr = bucket;
  uint32_t hash = FUNC9(key);
  for (struct object_slot* curr = FUNC4(*object, *bucket);
       curr;
       curr = FUNC5(*object, curr)) {
    if (hash == curr->hash && FUNC7(key, curr->string)) {
      *prev_ptr = curr->next;
      FUNC8(curr->string);
      curr->string = JV_NULL;
      FUNC2(curr->value);
      return 1;
    }
    prev_ptr = &curr->next;
  }
  return 0;
}