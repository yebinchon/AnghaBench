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

/* Variables and functions */
 int /*<<< orphan*/ * M_global_id_list ; 
 int /*<<< orphan*/  M_obj_id_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int f_and_c ; 
 int /*<<< orphan*/  f_cnt ; 
 int f_xor_c ; 
 int FUNC2 (int) ; 
 int metafile_mode ; 
 int /*<<< orphan*/ * temp_object_list ; 
 int /*<<< orphan*/  temp_object_list_size ; 
 int /*<<< orphan*/  tot_list_entries ; 

__attribute__((used)) static int FUNC3 (listree_t *LT, int temp_id) {
  if (!((FUNC2 (temp_id) ^ f_xor_c) & f_and_c)) {
    if (!(metafile_mode & 1)) {
      FUNC1 (FUNC0 (M_obj_id_list, temp_id), M_global_id_list[temp_id], FUNC2 (temp_id));
      tot_list_entries--;
      f_cnt++;
      return 0; // delete this
    } else {
      temp_object_list[temp_object_list_size ++] = FUNC0 (M_obj_id_list, temp_id);
      f_cnt++;
      return 1; // will be deleted, but later
    }
  } else {
    return 1; // do not touch
  }
}