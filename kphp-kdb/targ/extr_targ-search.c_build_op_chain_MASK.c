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
struct TYPE_6__ {struct TYPE_6__* last; struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef  TYPE_1__ query_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

query_t *FUNC3 (int op, query_t **QA, int N) {
  FUNC0 (N >= 2);
  query_t *Q, *R, *P = FUNC1 (op, 0);
  P->left = QA[N-2];
  P->right = QA[N-1];
  FUNC2 (P);
  Q = P;
  N -= 2;
  while (N) {
    R = FUNC1 (op, 0);
    R->left = QA[--N];
    R->right = Q;
    Q = R;
    FUNC2 (Q);
  }
  Q->last = P;
  return Q;
}