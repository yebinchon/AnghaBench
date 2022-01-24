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

/* Variables and functions */
 int /*<<< orphan*/ * AuxCond ; 
 int Q_aux_num ; 
 int* R ; 
 int /*<<< orphan*/ * RX ; 
 int /*<<< orphan*/  R_cnt ; 
 int /*<<< orphan*/  R_tot ; 
 int /*<<< orphan*/ * User ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

void FUNC2 (int uid) {
  FUNC1 (3, "store_res_targ_aud(%d)\n", uid);
  R[R_cnt++] = uid;
  long i;
  for (i = 0; (int) i < Q_aux_num; i++) {
    if (FUNC0 (User[uid], AuxCond[i], uid)) {
      RX[3*i + 3]++;
    }
  }
  RX[0]++;
  R_tot++;
}