#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long long transaction_id; struct TYPE_4__* h_next; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 TYPE_1__** TrHash ; 
 int FUNC0 (long long) ; 

transaction_t *FUNC1 (long long transaction_id) {
  int b = FUNC0 (transaction_id);
  transaction_t *ptr;

  for (ptr = TrHash[b]; ptr; ptr = ptr->h_next) {
    if (ptr->transaction_id == transaction_id) {
      return ptr;
    }
  }
  return 0;
}