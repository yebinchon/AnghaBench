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
 scalar_t__ RBuff ; 
 scalar_t__ RBuffEnd ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ idx_ptr_crc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ idx_rptr ; 
 scalar_t__ idx_wptr ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC3 (void) {
  FUNC0 (idx_ptr_crc >= RBuff && idx_ptr_crc <= idx_rptr && idx_rptr <= idx_wptr && idx_wptr <= RBuffEnd);
  FUNC1 ();
  if (idx_rptr == RBuff) {
    return;
  }
  FUNC2 (RBuff, idx_rptr, idx_wptr - idx_rptr);
  idx_wptr = RBuff + (idx_wptr - idx_rptr);
  idx_rptr = idx_ptr_crc = RBuff;
}