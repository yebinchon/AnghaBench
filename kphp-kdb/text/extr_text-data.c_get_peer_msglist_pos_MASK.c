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
 int FUNC3 (int,int,int /*<<< orphan*/ *) ; 

int FUNC4 (int user_id, int peer_id, int local_id) {
  static listree_t X;
  int S;

  R_cnt = 0;

  int res = FUNC3 (user_id, peer_id, &X);
  if (res <= 0) {
    return res;
  }

  S = FUNC2 (&X);
  FUNC0 (S >= 0);
  if (!S) {
    return 0;
  }

  res = FUNC1 (&X, local_id, 1) + 1;

  FUNC0 (res >= 0 && res <= S);
  return res;
}