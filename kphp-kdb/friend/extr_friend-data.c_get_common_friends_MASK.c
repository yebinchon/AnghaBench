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
 scalar_t__ MAX_FRIENDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  rev_friends ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const,int*,int) ; 
 scalar_t__ rev_friends_intersect_len ; 
 scalar_t__ rev_friends_intersect_pos ; 

int FUNC3 (int user_id, int user_num, const int *userlist, int *resultlist, int max_result) {
  rev_friends_intersect_len = 0;
  FUNC1 (rev_friends, user_id);
  FUNC0 (rev_friends_intersect_len <= MAX_FRIENDS);
  rev_friends_intersect_pos = 0;
  return FUNC2 (rev_friends, userlist[0], resultlist, max_result);
}