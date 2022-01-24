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
struct TYPE_4__ {struct TYPE_4__* h_next; int /*<<< orphan*/  transaction_id; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 TYPE_1__** TrHash ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (transaction_t *T) {
  int b = FUNC1 (T->transaction_id);
  FUNC0 (!T->h_next);

  T->h_next = TrHash[b];
  TrHash[b] = T;
  return 0;
}