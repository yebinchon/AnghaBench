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
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sort_entry*) ; 
 struct sort_entry* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

jv FUNC9(jv objects, jv keys) {
  FUNC0(FUNC6(objects) == JV_KIND_ARRAY);
  FUNC0(FUNC6(keys) == JV_KIND_ARRAY);
  FUNC0(FUNC2(FUNC4(objects)) == FUNC2(FUNC4(keys)));
  int n = FUNC2(FUNC4(objects));
  struct sort_entry* entries = FUNC8(objects, keys);
  jv ret = FUNC1();
  for (int i=0; i<n; i++) {
    FUNC5(entries[i].key);
    ret = FUNC3(ret, i, entries[i].object);
  }
  FUNC7(entries);
  return ret;
}