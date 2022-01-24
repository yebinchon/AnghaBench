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
 int /*<<< orphan*/  key_words ; 
 int* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  q_cnt ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 double FUNC2 (int) ; 

double FUNC3 (int word) {
  int *t = FUNC0 (&q_cnt, word), cnt = 0;

  if (t != NULL) {
    cnt = *t;
  }

  if (cnt <= 2) {
    return 0.0;
  }

  if (FUNC1 (&key_words, word) != NULL) {
    return 0.1;
  }

  return 1.0 / FUNC2 (cnt + 100);
}