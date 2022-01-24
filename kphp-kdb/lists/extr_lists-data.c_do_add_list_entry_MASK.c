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
typedef  int value_t ;
struct lev_new_entry_long {int value; } ;
struct lev_new_entry_ext {int value; int /*<<< orphan*/  extra; } ;
struct lev_new_entry {int dummy; } ;
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct lev_new_entry_ext* FUNC1 (struct lev_new_entry_ext*) ; 
 int LEV_LI_SET_ENTRY ; 
 int LEV_LI_SET_ENTRY_EXT ; 
 int LEV_LI_SET_ENTRY_LONG ; 
 struct lev_new_entry_ext* FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ lev_list_object_bytes ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*,int) ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct lev_new_entry_ext*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct lev_new_entry_ext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10 (list_id_t list_id, object_id_t object_id, int mode, int flags, value_t value, const int *extra) {
  FUNC3 (mode >= 0 && mode <= 3);
  if (FUNC4 (list_id) < 0 || (flags & -0x100)) {
    return -1;
  }
  if (metafile_mode && mode != 0 && FUNC7 (list_id, 1) < 0) {
    return -2;
  }
  if (extra && !extra[0] && !extra[1] && !extra[2] && !extra[3]) {
    extra = 0;
  }
  if (extra && mode == 1) {
    extra = 0;
  }
#ifdef VALUES64
  if (extra && value != (int) value) {
    extra = 0;
  }
#endif
  if (mode == 3) {
    mode = 0;
  }

  if (mode == 1 && !FUNC5 (list_id, object_id)) {
    return 0;
  }
  if (mode == 2 && FUNC5 (list_id, object_id)) {
    return 0;
  }
  struct lev_new_entry_ext *E, *EE;
  int ext;
  if (extra) {
    E = FUNC2 (LEV_LI_SET_ENTRY_EXT - (mode << 8) + flags, sizeof (struct lev_new_entry_ext) + lev_list_object_bytes, FUNC0 (list_id));
    FUNC9 (E, list_id, object_id);
    EE = FUNC1(E);
    EE->value = value;
    FUNC6 (EE->extra, extra, 16);
    ext = 0;
#ifdef VALUES64
  } else if (value != (int) value) {
    E = alloc_log_event (LEV_LI_SET_ENTRY_LONG - (mode << 8) + flags, sizeof (struct lev_new_entry_long) + lev_list_object_bytes, FIRST_INT (list_id));
    upcopy_list_object_id (E, list_id, object_id);
    struct lev_new_entry_long *EE = (struct lev_new_entry_long *) LEV_ADJUST_LO(E);
    EE->value = value;
    ext = 2;
#endif
  } else {
    E = FUNC2 (LEV_LI_SET_ENTRY - (mode << 8) + flags, sizeof (struct lev_new_entry) + lev_list_object_bytes, FUNC0 (list_id));
    FUNC9 (E, list_id, object_id);
    EE = FUNC1(E);
    EE->value = value;
    ext = 1;
  }
  return FUNC8 (E, ext, value);
}