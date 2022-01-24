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
struct lev_hints_set_user_info {int user_id; } ;

/* Variables and functions */
 scalar_t__ LEV_HINTS_SET_USER_INFO ; 
 struct lev_hints_set_user_info* FUNC0 (scalar_t__,int,int) ; 
 int FUNC1 (struct lev_hints_set_user_info*) ; 

int FUNC2 (int user_id, int info) {
  if (info > 13 || info < -2 || info == 0) {
    return 0;
  }

  struct lev_hints_set_user_info *E =
    FUNC0 (LEV_HINTS_SET_USER_INFO + info + 2, sizeof (struct lev_hints_set_user_info), user_id);

  E->user_id = user_id;

  return FUNC1 (E);
}