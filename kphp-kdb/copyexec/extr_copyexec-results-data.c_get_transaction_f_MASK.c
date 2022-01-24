#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int transaction_id; unsigned long long volume_id; struct TYPE_6__* hnext; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 void** H ; 
 unsigned int HASH_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  tot_memory_transactions ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int) ; 

transaction_t *FUNC4 (unsigned long long volume_id, int transaction_id, int force) {
  unsigned h = volume_id >> 32;
  h = h * 10007 + ((unsigned) volume_id);
  h = h * 10007 + transaction_id;
  h &= HASH_MASK;
  transaction_t **p = &(H[h]), *q;
  while (1) {
    q = *p;
    if (q == NULL) {
      break;
    }
    if (q->transaction_id == transaction_id && q->volume_id == volume_id) {
      *p = q->hnext;
      if (force >= 0) {
        q->hnext = H[h];
        H[h] = q;
        FUNC1 (q);
      }
      return q;
    }
    p = &(q->hnext);
  }
  if (force > 0) {
    FUNC2 ();
    q = FUNC3 (sizeof (transaction_t));
    tot_memory_transactions++;
    q->volume_id = volume_id;
    q->transaction_id = transaction_id;
    q->hnext = H[h];
    H[h] = q;
    FUNC0 (q);
    return q;
  }
  return NULL;
}