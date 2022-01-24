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
struct sort_entry {int index; void* key; void* object; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct sort_entry* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sort_entry*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sort_cmp ; 

__attribute__((used)) static struct sort_entry* FUNC8(jv objects, jv keys) {
  FUNC0(FUNC5(objects) == JV_KIND_ARRAY);
  FUNC0(FUNC5(keys) == JV_KIND_ARRAY);
  FUNC0(FUNC2(FUNC3(objects)) == FUNC2(FUNC3(keys)));
  int n = FUNC2(FUNC3(objects));
  struct sort_entry* entries = FUNC6(sizeof(struct sort_entry), n);
  for (int i=0; i<n; i++) {
    entries[i].object = FUNC1(FUNC3(objects), i);
    entries[i].key = FUNC1(FUNC3(keys), i);
    entries[i].index = i;
  }
  FUNC4(objects);
  FUNC4(keys);
  FUNC7(entries, n, sizeof(struct sort_entry), sort_cmp);
  return entries;
}