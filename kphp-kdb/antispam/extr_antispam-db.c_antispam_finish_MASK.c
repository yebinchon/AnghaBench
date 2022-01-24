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

/* Variables and functions */
 int SIMPLIFY_TYPE_COUNT ; 
 int /*<<< orphan*/  antispam_db_request ; 
 int /*<<< orphan*/  heap_pattern ; 
 int /*<<< orphan*/  id_to_pattern ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_pattern_clear ; 
 int /*<<< orphan*/ * root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  triple_to_pattern ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (void) {
  FUNC4 (triple_to_pattern, list_pattern_clear);
  FUNC0 (id_to_pattern);
  FUNC3 (triple_to_pattern);

  int i;
  for (i = 0; i < SIMPLIFY_TYPE_COUNT; i++) {
    FUNC2 (root[i]);
  }

  FUNC1 (heap_pattern);
  FUNC1 (antispam_db_request);
}