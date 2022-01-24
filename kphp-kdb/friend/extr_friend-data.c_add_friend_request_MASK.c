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
struct TYPE_6__ {int req_last_date; int /*<<< orphan*/  req_cnt; void* req_time_tree; void* req_tree; void* fr_tree; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_7__ {int cat; int date; } ;
typedef  TYPE_2__ tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int now ; 
 void* FUNC2 (void*,int,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC3 (void*,int) ; 

__attribute__((used)) static int FUNC4 (user_t *U, int friend_id, int cat, int force) {
  tree_t *P;
  if (!U || friend_id <= 0) {
    return -1;
  }
  P = FUNC3 (U->req_tree, friend_id);
  if (P) {
    if (force == 2) {
      return 0;
    }
    P->cat = cat;
    P = FUNC3 (U->req_time_tree, -P->date);
    FUNC0 (P);
    P->cat = cat;
    return P->cat;
  } else if (force) {
    if (FUNC3 (U->fr_tree, friend_id)) {
      return -1;
    }
    if (now > U->req_last_date) {
      U->req_last_date = now;
    } else {
      U->req_last_date++;
    }
    U->req_tree = FUNC2 (U->req_tree, friend_id, FUNC1(), cat, U->req_last_date);
    U->req_time_tree = FUNC2 (U->req_time_tree, -U->req_last_date, FUNC1(), cat, friend_id);
    U->req_cnt++;
    return cat;
  } else {
    return 0;
  }
}