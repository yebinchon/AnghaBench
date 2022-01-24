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
struct lev_mf_add_exception {int user_id; int friend_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_MF_ADD_EXCEPTION ; 
 int FUNC0 (struct lev_mf_add_exception*) ; 
 struct lev_mf_add_exception* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2 (int uid, int fid) {
  struct lev_mf_add_exception *E =
    FUNC1 (LEV_MF_ADD_EXCEPTION, sizeof (struct lev_mf_add_exception), 0);

  E->user_id = uid;
  E->friend_id = fid;

  return FUNC0 (E);
}