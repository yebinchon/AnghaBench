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
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int dups_users_removed_from_urlist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  forbidden_owners_hashset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mandatory_owners_hashset ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int now ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recommend_cmp_pair1 ; 
 int /*<<< orphan*/  recommend_cmp_pair2 ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int,int,int const) ; 

int FUNC9 (int *Q, int QL, int mask, int st_time, int end_time, int excluded_user_id, int timestamp, int T) {
  int i, mandatory_owners = 0, forbidden_owners = 1;
  dyn_mark_t mrk;
  FUNC0 (mrk);
  for (i = 0; i < QL; i++) {
    if (Q[(i<<1)+1] == -2) {
      mandatory_owners++;
    } else if (Q[(i<<1)+1] == -1) {
      forbidden_owners++;
    }
  }
  FUNC2 (&mandatory_owners_hashset, mandatory_owners);
  FUNC2 (&forbidden_owners_hashset, forbidden_owners);
  for (i = 0; i < QL; ) {
    if (Q[(i<<1)+1] == -2) {
      FUNC3 (&mandatory_owners_hashset, Q[i<<1]);
      QL--;
      if (i != QL) {
        FUNC4 (Q + (i<<1), Q + (QL<<1), 8);
      }
      continue;
    } else if (Q[(i<<1)+1] == -1) {
      FUNC3 (&forbidden_owners_hashset, Q[i<<1]);
      QL--;
      if (i != QL) {
        FUNC4 (Q + (i<<1), Q + (QL<<1), 8);
      }
      continue;
    }
    i++;
  }
  FUNC3 (&forbidden_owners_hashset, excluded_user_id);

  /* remove duplicate users */
  int m = 0;
  FUNC5 (Q, QL, 8, recommend_cmp_pair1);
  for (i = 1; i < QL; i++) {
    if (Q[2*i] != Q[2*m]) {
      ++m;
      Q[2*m] = Q[2*i];
      Q[2*m+1] = Q[2*i+1];
    }
  }
  m++;
  dups_users_removed_from_urlist += QL - m;
  QL = m;
  /* sort in rating decreasing order */
  FUNC5 (Q, QL, 8, recommend_cmp_pair2);

  const int min_item_creation_time = now - 30 * T;
  FUNC7 ();
  for (i = 0; i < QL; i++) {
    FUNC8 (Q[(i<<1)], Q[(i<<1)+1], mask, st_time, end_time, timestamp, min_item_creation_time);
  }
  int res = FUNC6 (T);
  FUNC1 (mrk);
  return res;
}