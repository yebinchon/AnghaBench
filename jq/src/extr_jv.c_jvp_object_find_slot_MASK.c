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
struct object_slot {scalar_t__ hash; int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 struct object_slot* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct object_slot* FUNC1 (int /*<<< orphan*/ ,struct object_slot*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct object_slot* FUNC4(jv object, jv keystr, int* bucket) {
  uint32_t hash = FUNC3(keystr);
  for (struct object_slot* curr = FUNC0(object, *bucket);
       curr;
       curr = FUNC1(object, curr)) {
    if (curr->hash == hash && FUNC2(keystr, curr->string)) {
      return curr;
    }
  }
  return 0;
}