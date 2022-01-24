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
 int Q_aux_num ; 
 int Q_limit ; 
 int /*<<< orphan*/  R ; 
 scalar_t__ RX ; 
 int R_cnt ; 
 int R_position ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  postprocess_res ; 
 int /*<<< orphan*/  postprocess_res_targ_aud ; 
 int /*<<< orphan*/  store_res ; 
 int /*<<< orphan*/  store_res_targ_aud ; 
 int targ_aud_and_mask ; 
 int targ_aud_cpv ; 
 int targ_aud_position ; 
 int targ_aud_xor_mask ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int,int,int,int) ; 

int FUNC4 (int position, int cpv, int and_mask, int xor_mask) {
  FUNC3 (1, "perform targ_audience query(position=%d, cpv=%d, mask=%d:%d) for %d auxiliary queries\n", position, cpv, and_mask, xor_mask, Q_aux_num);
  if (position <= 0 || position > 100 || Q_limit < 0 || Q_limit > 1000) {
    return -1;
  }
  if (!Q_limit) {
    Q_limit = 50;
  }
  FUNC1 (RX, 0, (Q_aux_num + 1) * 12);
  R_position = (-1 << 31);
  store_res = store_res_targ_aud;
  postprocess_res = postprocess_res_targ_aud;
  targ_aud_position = position;
  targ_aud_cpv = cpv;
  targ_aud_and_mask = and_mask;
  targ_aud_xor_mask = xor_mask;
  int res = FUNC2 (0);
  R_cnt = 3 * Q_aux_num + 2;
  R_position = 0;
  FUNC0 (R, RX + 1, R_cnt * 4);
  return res;
}