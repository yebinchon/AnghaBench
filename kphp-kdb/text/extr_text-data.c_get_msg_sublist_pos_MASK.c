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
 scalar_t__ R_cnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int,int,int /*<<< orphan*/ **,int,int) ; 

int FUNC5 (int user_id, int and_mask, int xor_mask, int local_id) { // ???
  static listree_t *X;
  int S;
  static int rec_cnt = 0;

  R_cnt = 0;

  int res = FUNC4 (user_id, and_mask, xor_mask, &X, 1, 1);
  if (res != -4) {
    return res;
  }

  S = FUNC2 (X);
  FUNC0 (S >= 0);
  if (!S) {
    return 0;
  }

  res = FUNC1 (X, local_id, 1);

  if (res == -2) {
    if (!FUNC3 (user_id)) {
      return -2;
    }
    FUNC0 (++rec_cnt == 1);
    res = FUNC5 (user_id, and_mask, xor_mask, local_id);
    --rec_cnt;
    return res;
  }

  res++;

  FUNC0 (res >= 0 && res <= S);
  return res;
}