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
typedef  char value_t ;
struct lev_set_value_long {char value; } ;
struct lev_set_value {char value; } ;
struct lev_generic {int dummy; } ;
struct lev_del_entry {int dummy; } ;
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct lev_set_value*) ; 
 scalar_t__ LEV_LI_INCR_VALUE ; 
 scalar_t__ LEV_LI_INCR_VALUE_LONG ; 
 scalar_t__ LEV_LI_INCR_VALUE_TINY ; 
 scalar_t__ LEV_LI_SET_VALUE ; 
 scalar_t__ LEV_LI_SET_VALUE_LONG ; 
 struct lev_set_value* FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ lev_list_object_bytes ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 long long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int,struct lev_generic*) ; 
 int /*<<< orphan*/  FUNC6 (struct lev_set_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

long long FUNC7 (list_id_t list_id, object_id_t object_id, value_t value, int incr) {
  if (FUNC3 (list_id) < 0) {
    return -1LL << 63;
  }
  if (metafile_mode && FUNC4 (list_id, 1) < 0) {
    return -1LL << 63;
  }
  struct lev_set_value *E;
  if (incr && value == (signed char) value) {
    E = FUNC2 (LEV_LI_INCR_VALUE_TINY + (value & 0xff), sizeof (struct lev_del_entry) + lev_list_object_bytes, FUNC0 (list_id));
#ifdef VALUES64
  } else if (value != (int) value) {
    E = alloc_log_event (incr ? LEV_LI_INCR_VALUE_LONG : LEV_LI_SET_VALUE_LONG, sizeof (struct lev_set_value_long) + lev_list_object_bytes, FIRST_INT (list_id));
    ((struct lev_set_value_long *) LEV_ADJUST_LO (E))->value = value;
#endif
  } else {
    E = FUNC2 (incr ? LEV_LI_INCR_VALUE : LEV_LI_SET_VALUE, sizeof (struct lev_set_value) + lev_list_object_bytes, FUNC0 (list_id));
    ((struct lev_set_value *) FUNC1 (E))->value = value;
  }

  FUNC6 (E, list_id, object_id);
  return FUNC5 (list_id, object_id, value, incr, (struct lev_generic *)E);
}