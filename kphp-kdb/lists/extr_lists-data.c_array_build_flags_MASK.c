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
typedef  int /*<<< orphan*/  listree_t ;

/* Variables and functions */
 int /*<<< orphan*/  LF_BIGFLAGS ; 
 int /*<<< orphan*/  LF_HAVE_DATES ; 
 int /*<<< orphan*/  LF_HAVE_TEXTS ; 
 int /*<<< orphan*/  LF_HAVE_VALUES ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  new_flags ; 

__attribute__((used)) static int FUNC4 (listree_t *LT, int temp_id) {
  int fl = FUNC1 (temp_id);
  if ((unsigned)fl >= 256) {
    new_flags |= LF_BIGFLAGS;
  }
  if (FUNC3 (temp_id)) {
    new_flags |= LF_HAVE_VALUES;
  }
  if (FUNC0 (temp_id)) {
    new_flags |= LF_HAVE_DATES;
  }
  int text_len;
  FUNC2 (temp_id, &text_len);
  if (text_len) {
    new_flags |= LF_HAVE_TEXTS;
  }
  return 0;
}