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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ last_decryption_failed_transaction_pos ; 
 int last_synchronization_point_id ; 
 scalar_t__ last_synchronization_point_pos ; 
 int /*<<< orphan*/  replay_synchronization_point ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

int FUNC4 (void) {
  last_synchronization_point_id = 0;
  last_decryption_failed_transaction_pos = last_synchronization_point_pos = 0;
  int r = FUNC0 (0, replay_synchronization_point);
  if (r < 0) {
    FUNC3 (1, "find_last_synchronization_point: copyexec_aux_replay_binlog returns %d.\n", r);
  }
  if (last_decryption_failed_transaction_pos > last_synchronization_point_pos) {
    FUNC2 ("Couldn't decrypt transaction at %lld pos, last synchronization point pos is %lld.\n", last_decryption_failed_transaction_pos, last_synchronization_point_pos);
    FUNC1 (1);
  }
  return last_synchronization_point_id;
}