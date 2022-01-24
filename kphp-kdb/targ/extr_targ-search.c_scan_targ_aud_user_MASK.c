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
 int /*<<< orphan*/ * RX ; 
 int /*<<< orphan*/ * User ; 
 int /*<<< orphan*/  targ_aud_and_mask ; 
 int /*<<< orphan*/  targ_aud_cpv ; 
 int /*<<< orphan*/  targ_aud_position ; 
 int /*<<< orphan*/  targ_aud_xor_mask ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

void FUNC3 (int uid) {
  long i;
  FUNC2 (3, "scan_targ_aud_user(%d)\n", uid);
  int val = FUNC0 (uid, targ_aud_position, targ_aud_cpv, targ_aud_and_mask, targ_aud_xor_mask);
  for (i = 0; (int) i < Q_aux_num; i++) {
    if (FUNC1 (User[uid], AuxCond[i], uid)) {
      RX[3*i + 4]++;
      if (val) {
	RX[3*i + 5]++;
      }
    }
  }
  RX[1]++;
  if (val) {
    RX[2]++;
  }
}