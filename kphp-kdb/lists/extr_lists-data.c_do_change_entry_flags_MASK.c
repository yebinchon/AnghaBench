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
struct lev_set_flags_long {int flags; int and_mask; int xor_mask; } ;
struct lev_set_flags {int flags; int and_mask; int xor_mask; } ;
struct lev_change_flags_long {int flags; int and_mask; int xor_mask; } ;
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct lev_set_flags_long* FUNC1 (struct lev_set_flags_long*) ; 
 scalar_t__ LEV_LI_CHANGE_FLAGS_LONG ; 
 scalar_t__ LEV_LI_DECR_FLAGS ; 
 scalar_t__ LEV_LI_INCR_FLAGS ; 
 scalar_t__ LEV_LI_SET_FLAGS ; 
 scalar_t__ LEV_LI_SET_FLAGS_LONG ; 
 struct lev_set_flags_long* FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ lev_list_object_bytes ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct lev_set_flags_long*) ; 
 int /*<<< orphan*/  FUNC6 (struct lev_set_flags_long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7 (list_id_t list_id, object_id_t object_id, int set_flags, int clear_flags) {
  int res = 0;
  if (FUNC3 (list_id) < 0) {
    return -1;
  }
  if (metafile_mode && FUNC4 (list_id, 1) < 0) {
    return -2;
  }
  if ((clear_flags | set_flags) == -1 && !(set_flags & -0x100)) {
    struct lev_set_flags *E = FUNC2 (LEV_LI_SET_FLAGS + set_flags, sizeof (struct lev_set_flags) + lev_list_object_bytes, FUNC0(list_id));
    FUNC6 (E, list_id, object_id);
    return FUNC5 (E);
  }
  if ((set_flags & -0x100) || (clear_flags & -0x100)) {
    if ((clear_flags | set_flags) == -1) {
      struct lev_set_flags_long *E = FUNC2 (LEV_LI_SET_FLAGS_LONG, sizeof (struct lev_set_flags_long) + lev_list_object_bytes, FUNC0(list_id));
      FUNC6 (E, list_id, object_id);
      ((struct lev_set_flags_long *) FUNC1 (E))->flags = set_flags;
      return FUNC5 ((struct lev_set_flags *) E);
    } else {
      struct lev_change_flags_long *E = FUNC2 (LEV_LI_CHANGE_FLAGS_LONG, sizeof (struct lev_change_flags_long) + lev_list_object_bytes, FUNC0(list_id));
      FUNC6 (E, list_id, object_id);
      struct lev_change_flags_long *EE = FUNC1 (E);
      EE->and_mask = ~(clear_flags | set_flags);
      EE->xor_mask = set_flags;
      return FUNC5 ((struct lev_set_flags *) E);
    }
  }
  if (clear_flags &= ~set_flags) {
    struct lev_set_flags *E = FUNC2 (LEV_LI_DECR_FLAGS + clear_flags, sizeof (struct lev_set_flags) + lev_list_object_bytes, FUNC0(list_id));
    FUNC6 (E, list_id, object_id);
    res = FUNC5 (E);
  }
  if (set_flags) {
    struct lev_set_flags *E = FUNC2 (LEV_LI_INCR_FLAGS + set_flags, sizeof (struct lev_set_flags) + lev_list_object_bytes, FUNC0(list_id));
    FUNC6 (E, list_id, object_id);
    res = FUNC5 (E);
  }
  return res;
}