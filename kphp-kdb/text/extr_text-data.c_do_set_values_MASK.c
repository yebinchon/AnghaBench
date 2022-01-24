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
struct value_data {int fields_mask; int zero_mask; int* data; } ;
struct lev_set_extra_fields {int local_id; int /*<<< orphan*/  extra; } ;

/* Variables and functions */
 scalar_t__ LEV_TX_SET_EXTRA_FIELDS ; 
 int MAX_EXTRA_MASK ; 
 scalar_t__ FUNC0 (int,int,struct value_data*) ; 
 struct lev_set_extra_fields* FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 struct value_data* FUNC3 (struct value_data*,int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int write_extra_mask ; 

int FUNC7 (int user_id, int local_id, struct value_data *V) {
  if (verbosity > 1) {
    FUNC5 (stderr, "do_set_values(%d,%d,%d:%d,%d,...):\n", user_id, local_id, V->fields_mask, V->zero_mask, V->fields_mask ? V->data[0] : 0);
  }
  if (V->fields_mask != V->zero_mask || (V->fields_mask & ~MAX_EXTRA_MASK)) {
    return -1;
  }
  if (!(V->fields_mask & write_extra_mask)) {
    return 0;
  }
  if (FUNC2 (user_id) < 0 || local_id <= 0) {
    return -1;
  }
  V = FUNC3 (V, 1, write_extra_mask);
  int s = 4 * FUNC4 (V->fields_mask);
  struct lev_set_extra_fields *E = FUNC1 (LEV_TX_SET_EXTRA_FIELDS + V->fields_mask, 12 + s, user_id);
  E->local_id = local_id;
  FUNC6 (E->extra, V->data, s);
  return FUNC0 (user_id, local_id, V) > 0;
}