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
typedef  int /*<<< orphan*/  user_t ;
struct lev_langs {int* langs; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_LANG_DEL ; 
 int MAX_LANGS ; 
 struct lev_langs* FUNC0 (scalar_t__,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

int FUNC3 (int user_id, int lang_id) {
  user_t *U = FUNC2 (user_id);
  if (!U || lang_id < 0 || lang_id >= MAX_LANGS) {
    return 0;
  }

  struct lev_langs *E = FUNC0 (LEV_TARG_LANG_DEL + 1, 12, user_id);
  E->langs[0] = lang_id;

  return FUNC1 (U, E->langs, 1);
}