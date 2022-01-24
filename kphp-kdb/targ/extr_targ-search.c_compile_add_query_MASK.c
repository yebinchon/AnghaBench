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
typedef  int /*<<< orphan*/  query_t ;

/* Variables and functions */
 scalar_t__ MAX_AUX_QUERIES ; 
 void** Q_aux ; 
 scalar_t__ Q_aux_num ; 
 void* Qq ; 
 char* Qs ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 

query_t *FUNC2 (char **str_ptr) {
  FUNC1 (3, "parsing additional query %.40s...\n", *str_ptr);
  if (Qq) {
    if (Q_aux_num == MAX_AUX_QUERIES) {
      return 0;
    }
    Q_aux[Q_aux_num++] = Qq;
    Qq = 0;
  }
  Qs = *str_ptr;
  query_t *R = Qq = FUNC0 (128);
  *str_ptr = Qs;
  return R;
}