#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int user_id; int cat_mask; scalar_t__ fr_cnt; scalar_t__ fr_last_date; int /*<<< orphan*/  fr_tree; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_7__ {int cat; } ;
typedef  TYPE_2__ tree_t ;

/* Variables and functions */
 scalar_t__ MAX_FRIENDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  rev_friends ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reverse_friends_mode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int verbosity ; 

__attribute__((used)) static int FUNC6 (user_t *U, int friend_id, int cat) {
  tree_t *P;
  if (!U || friend_id <= 0) {
    return -1;
  }
  if (verbosity >= 4) {
    FUNC1 (stderr, "add_friend. user_id = %d, friend_id = %d\n", U->user_id, friend_id);
  }
  P = FUNC5 (U->fr_tree, friend_id);
  if (P) {
    P->cat = cat | 1;
    U->cat_mask |= P->cat;
    return P->cat;
  } else {

    if (U->fr_cnt >= MAX_FRIENDS) {
      return -1;
    }

    FUNC0 (U, friend_id);

    if (now > U->fr_last_date) {
      U->fr_last_date = now;
    } else {
      U->fr_last_date++;
    }

    U->fr_tree = FUNC4 (U->fr_tree, friend_id, FUNC2(), cat | 1, U->fr_last_date);
    U->fr_cnt++;

    if (reverse_friends_mode) {
      rev_friends = FUNC3 (rev_friends, friend_id, U->user_id, FUNC2(), 0);
    }

    return cat | 1;
  }
}