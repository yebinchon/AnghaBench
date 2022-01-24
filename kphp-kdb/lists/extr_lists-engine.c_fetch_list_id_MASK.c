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
typedef  int /*<<< orphan*/ **** var_list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_BAD_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *****) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ****) ; 
 int list_id_ints ; 
 int /*<<< orphan*/  log_split_max ; 
 int /*<<< orphan*/  log_split_min ; 
 int /*<<< orphan*/  log_split_mod ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *****,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5 (var_list_id_t *list_id) {
  FUNC0 (list_id);
  if (FUNC2 (4 * list_id_ints) < 0) {
    return -1;    
  }
#ifdef LISTS_Z
  tl_fetch_raw_data (*list_id, 4 * list_id_ints);
#elif defined (LISTS64)
  tl_fetch_raw_data (list_id, 8);
#else
  FUNC3 (list_id, 4);
#endif
  if (FUNC1 (*list_id) < 0) {
    FUNC4 (TL_ERROR_BAD_VALUE, "list_id in not from this engine. log_split_mod = %d, log_split_min = %d, log_split_max = %d", log_split_mod, log_split_min, log_split_max);
    return -1;
  }
  return 0;
}