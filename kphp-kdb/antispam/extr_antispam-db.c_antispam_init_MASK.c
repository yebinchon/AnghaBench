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
 int ANSWER_CAPACITY ; 
 scalar_t__ MAX_PATTERN_LEN ; 
 int SIMPLIFY_TYPE_COUNT ; 
 scalar_t__ STRING_PROCESS_BUF_SIZE ; 
 int /*<<< orphan*/  antispam_db_request ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  heap_pattern ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * root ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3 (void) {
  FUNC0 (MAX_PATTERN_LEN <= STRING_PROCESS_BUF_SIZE);

  int i;
  for (i = 0; i < SIMPLIFY_TYPE_COUNT; i++) {
    root[i] = FUNC1 (0, 0);
  }

  FUNC2 (heap_pattern, ANSWER_CAPACITY);
  FUNC2 (antispam_db_request, ANSWER_CAPACITY * 2);
}