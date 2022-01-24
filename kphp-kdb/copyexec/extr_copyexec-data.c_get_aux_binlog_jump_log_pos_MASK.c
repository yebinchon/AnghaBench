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
struct TYPE_3__ {long long binlog_pos; scalar_t__ transaction_id; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long long) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ transactions ; 

__attribute__((used)) static void FUNC2 (long long *pos) {
  transaction_t *T = FUNC1 ();
  if (T) {
    *pos = T->binlog_pos;
    transactions = T->transaction_id - 1;
    FUNC0 (T->binlog_pos);
  } else {
    *pos = 0;
    transactions = 0;
  }
}