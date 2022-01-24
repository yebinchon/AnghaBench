#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef  TYPE_1__ utree_t ;
struct TYPE_6__ {int user_id; int rate; } ;
typedef  TYPE_2__ user_t ;

/* Variables and functions */
 int Q_limit ; 
 int* R ; 
 int R_cnt ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC1 (utree_t *T) {
  if (!T) {
    return;
  }

  FUNC1 (T->right);

  if (R_cnt >= Q_limit * 2) {
    return;
  }

  user_t *U = (user_t *)T;
  if (FUNC0 (U)) {
    R[R_cnt++] = U->user_id;
    R[R_cnt++] = U->rate >> 8;
  }

  if (R_cnt >= Q_limit * 2) {
    return;
  }

  FUNC1 (T->left);
}