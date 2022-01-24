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
typedef  int /*<<< orphan*/  item_t ;

/* Variables and functions */
 scalar_t__ Q_skip_mismatch_words_if_complete_case_found ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2 (item_t *I, int p, int *found) {
  if (Q_skip_mismatch_words_if_complete_case_found) {
    if (p >= 6) {
      if (!(*found)) {
        *found = 1;
        FUNC0 ();
      }
      FUNC1 (I, p);
    } else {
      if (!(*found)) {
        FUNC1 (I, p);
      }
    }
  } else {
    FUNC1 (I, p);
  }
}