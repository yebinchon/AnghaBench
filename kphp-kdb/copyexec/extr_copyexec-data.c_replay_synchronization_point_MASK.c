#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lev_copyexec_aux_transaction_header {int mask; } ;
struct TYPE_3__ {scalar_t__ transaction_id; int /*<<< orphan*/  binlog_pos; int /*<<< orphan*/  key_id; int /*<<< orphan*/  ilen; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ replay_transaction_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int instance_mask ; 
 int /*<<< orphan*/  last_decryption_failed_transaction_pos ; 
 scalar_t__ last_synchronization_point_id ; 
 int /*<<< orphan*/  last_synchronization_point_pos ; 
 scalar_t__ FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,int,int) ; 

void FUNC5 (replay_transaction_info_t *T) {
  unsigned char *b;
  int blen;
  int r = FUNC1 (T->input, T->ilen, T->key_id, T->binlog_pos, T->transaction_id, &b, &blen);
  if (r < 0) {
    last_decryption_failed_transaction_pos = T->binlog_pos;
    return;
  }
  if (FUNC3 (b, blen)) {
    struct lev_copyexec_aux_transaction_header *B = (struct lev_copyexec_aux_transaction_header *) b;
    if (!(B->mask & instance_mask)) {
      FUNC4 (3, "Skip synchronization point. (transaction_id: %d, mask: 0x%x, instance_mask: 0x%x)\n", T->transaction_id, B->mask, instance_mask);
      FUNC2 (b);
      return;
    }
    FUNC0 (last_synchronization_point_id < T->transaction_id);
    last_synchronization_point_id = T->transaction_id;
    last_synchronization_point_pos = T->binlog_pos;
  }
  FUNC2 (b);
}