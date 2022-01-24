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
 scalar_t__ WStats ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  slave_mode ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 int worker_id ; 

void FUNC2 (void) {
  if (!slave_mode) {
    return;
  }
  static int slave_cnt[4];
  FUNC0 (slave_cnt);

  FUNC1 (WStats + worker_id * 2, slave_cnt);
  FUNC1 (WStats + worker_id * 2 + 1, slave_cnt);
}