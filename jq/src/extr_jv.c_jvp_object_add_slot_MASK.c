#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct object_slot {int next; int /*<<< orphan*/  string; int /*<<< orphan*/  hash; } ;
struct TYPE_3__ {int next_free; } ;
typedef  TYPE_1__ jvp_object ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 struct object_slot* FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct object_slot* FUNC4(jv object, jv key, int* bucket) {
  jvp_object* o = FUNC1(object);
  int newslot_idx = o->next_free;
  if (newslot_idx == FUNC2(object)) return 0;
  struct object_slot* newslot = FUNC0(object, newslot_idx);
  o->next_free++;
  newslot->next = *bucket;
  *bucket = newslot_idx;
  newslot->hash = FUNC3(key);
  newslot->string = key;
  return newslot;
}