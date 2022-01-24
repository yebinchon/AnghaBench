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
struct lev_setlist_long {int num; int /*<<< orphan*/  L; } ;

/* Variables and functions */
 scalar_t__ LEV_FR_CAT_SETLIST ; 
 struct lev_setlist_long* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

int FUNC5 (int user_id, int cat, int *List, int len) {
  user_t *U = FUNC1 (user_id);
  if (!U || cat <= 0 || cat > 30) {
    return -1;
  }
  int i = 0, j = 1;

  FUNC2 (List, len-1);
  while (i < len && List[i] <= 0) { i++; }
  List += i;
  len -= i;
  if (len > 0) {
    for (i = 1; i < len; i++) {
      if (List[i] > List[i-1]) {
        List[j++] = List[i];
      }
    }
    len = j;
  }

  struct lev_setlist_long *E = FUNC0 (LEV_FR_CAT_SETLIST + cat, 12 + 4 * len, user_id);
  E->num = len;
  FUNC3 (E->L, List, len*4);

  return FUNC4 (U, cat, E->L, len);
}