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
typedef  int /*<<< orphan*/  listree_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAXINT ; 
 int MAX_RES ; 
 int /*<<< orphan*/  OTree ; 
 scalar_t__ R ; 
 scalar_t__ R_end ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int account_date_buckets ; 
 int account_date_step ; 
 int account_max_date ; 
 int account_min_date ; 
 int /*<<< orphan*/  barray_account_date ; 
 int /*<<< orphan*/  btree_account_date ; 
 int /*<<< orphan*/  carray_account_date ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctree_account_date ; 
 int /*<<< orphan*/  in_array ; 
 int /*<<< orphan*/  in_tree ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7 (list_id_t list_id, int mode, int min_date, int max_date, int step) {
  if (min_date <= 0 || max_date <= min_date || step <= 0 || (unsigned) mode >= 16) {
    return -1;
  }
  int rem = (max_date - min_date) % step;
  int buckets = (max_date - min_date) / step;
  if (rem || buckets > MAX_RES - 2) {
    return -1;
  }
  if (metafile_mode && FUNC5 (list_id, 1) < 0) {
    return -2;
  }

  R_end = R;

  list_t *L = FUNC0 (list_id, 2);

  if (!L) {
    return FUNC1 (list_id) < 0 ? -1 : 0;
  }

  FUNC6 (L);

  FUNC4 (R, 0, (buckets + 2) * 4);

  listree_t LI, *LT = &LI;

  if (!mode) {
    in_array = barray_account_date;
    in_tree = btree_account_date;
    LT = (listree_t *) &OTree;
  } else {
    in_array = carray_account_date;
    in_tree = ctree_account_date;
    FUNC3 (LT, mode & 7);
  }
  account_min_date = min_date;
  account_max_date = max_date;
  account_date_step = step;
  account_date_buckets = buckets;
  
  FUNC2 (LT, 0, MAXINT);

  R_end = R + buckets + 2;
  
  return buckets + 2;
}