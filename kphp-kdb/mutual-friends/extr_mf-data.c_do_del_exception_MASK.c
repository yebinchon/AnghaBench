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
struct lev_mf_del_exception {int user_id; int friend_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_MF_DEL_EXCEPTION ; 
 struct lev_mf_del_exception* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lev_mf_del_exception*) ; 

int FUNC2 (int uid, int fid) {
  struct lev_mf_del_exception *E =
    FUNC0 (LEV_MF_DEL_EXCEPTION, sizeof (struct lev_mf_del_exception), 0);

  E->user_id = uid;
  E->friend_id = fid;

  return FUNC1 (E);
}