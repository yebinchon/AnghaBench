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
 int MAX_RES ; 
 int* M_global_id_list ; 
 int /*<<< orphan*/  M_obj_id_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int* PTR_INTS ; 
 int* R ; 
 int* R_end ; 
 int R_mode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 char* FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8 (listree_t *LT, int temp_id) {
  int m = R_mode, *p = R_end;
  FUNC1 (R_end < R + MAX_RES);
  //assert (LT);
  if (m & 1024) {
    int text_len;
    *((char **)(p - PTR_INTS - 1)) = FUNC4 (temp_id, &text_len);
    *--p = text_len; 
    p -= PTR_INTS;
  }
  if (m & 512) {
    FUNC7 (&p, FUNC5 (temp_id));
  }
  if (m & 256) {
    *--p = M_global_id_list[temp_id];
  }
  if (m & 128) {
    *--p = FUNC2 (temp_id);
  }
  if (m & 64) {
    *--p = FUNC3 (temp_id);
  }
  FUNC6 (&p, FUNC0 (M_obj_id_list, temp_id));
  R_end = p;
  return 0;
}