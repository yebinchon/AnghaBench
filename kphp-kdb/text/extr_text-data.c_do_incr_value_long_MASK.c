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
struct value_data {int /*<<< orphan*/  data; scalar_t__ zero_mask; } ;
struct lev_incr_field_long {int local_id; long long value; } ;

/* Variables and functions */
 scalar_t__ LEV_TX_INCR_FIELD_LONG ; 
 scalar_t__ FUNC0 (int,int,struct value_data*) ; 
 struct lev_incr_field_long* FUNC1 (scalar_t__,int,int) ; 
 struct value_data* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long long*,int) ; 
 int read_extra_mask ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int write_extra_mask ; 

int FUNC6 (int user_id, int local_id, int value_id, long long incr) {
  if (verbosity > 1) {
    FUNC4 (stderr, "do_incr_value_long(%d,%d,%d,%lld):\n", user_id, local_id, value_id, incr);
  }
  if (FUNC3 (user_id) < 0 || local_id <= 0 || value_id < 8 || value_id >= 12) {
    return -1;
  }
  if (!((write_extra_mask >> value_id) & 1)) {
    return 0;
  }
  struct lev_incr_field_long *E = FUNC1 (LEV_TX_INCR_FIELD_LONG + value_id, 20, user_id);
  E->local_id = local_id;
  E->value = incr;

  if (!(read_extra_mask & (1 << value_id))) {
    return 1;
  }

  struct value_data *V = FUNC2 (1 << value_id);
  V->zero_mask = 0;
  FUNC5 (&V->data, &incr, 8);

  return FUNC0 (user_id, local_id, V) > 0;
}