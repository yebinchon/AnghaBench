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
struct lev_hints_add_object_text {char* text; scalar_t__ object_id; scalar_t__ object_type; int /*<<< orphan*/  text_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  changes_count ; 
 int /*<<< orphan*/  changes_memory ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  global_changes_en ; 
 int /*<<< orphan*/  global_changes_st ; 
 scalar_t__ no_changes ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/ ** stat_global ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 scalar_t__ write_only ; 

int FUNC7 (struct lev_hints_add_object_text *E) {
  if (!FUNC2 (E->object_type) || !FUNC0 (E->object_id) || !FUNC1 (E->text_len)) {
    return 0;
  }
  if (write_only || no_changes) {
    return 1;
  }

  changes_memory -= FUNC4();
  char *clone = FUNC6 (E->text);
  changes_memory += FUNC4();
  if (clone == NULL) {
    if (verbosity > 1) {
      FUNC5 (stderr, "botva %s\n", E->text);
    }
    return 0;
  }

  stat_global[(int)E->object_type][1]++;

  FUNC3 (&global_changes_st, &global_changes_en, (int)E->object_type, (int)E->object_id, clone);
  changes_count++;

  return 1;
}