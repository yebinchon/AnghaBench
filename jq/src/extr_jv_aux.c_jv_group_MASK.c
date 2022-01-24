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
struct sort_entry {int /*<<< orphan*/  object; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sort_entry*) ; 
 struct sort_entry* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

jv FUNC10(jv objects, jv keys) {
  FUNC0(FUNC7(objects) == JV_KIND_ARRAY);
  FUNC0(FUNC7(keys) == JV_KIND_ARRAY);
  FUNC0(FUNC3(FUNC4(objects)) == FUNC3(FUNC4(keys)));
  int n = FUNC3(FUNC4(objects));
  struct sort_entry* entries = FUNC9(objects, keys);
  jv ret = FUNC1();
  if (n > 0) {
    jv curr_key = entries[0].key;
    jv group = FUNC2(FUNC1(), entries[0].object);
    for (int i = 1; i < n; i++) {
      if (FUNC5(FUNC4(curr_key), FUNC4(entries[i].key))) {
        FUNC6(entries[i].key);
      } else {
        FUNC6(curr_key);
        curr_key = entries[i].key;
        ret = FUNC2(ret, group);
        group = FUNC1();
      }
      group = FUNC2(group, entries[i].object);
    }
    FUNC6(curr_key);
    ret = FUNC2(ret, group);
  }
  FUNC8(entries);
  return ret;
}