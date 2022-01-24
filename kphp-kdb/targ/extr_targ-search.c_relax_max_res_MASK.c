#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; int max_res; TYPE_2__* right; TYPE_1__* left; scalar_t__ complexity; } ;
typedef  TYPE_3__ query_t ;
struct TYPE_6__ {int max_res; scalar_t__ complexity; } ;
struct TYPE_5__ {int max_res; scalar_t__ complexity; } ;

/* Variables and functions */
 int GRAY ; 
 int INFTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
#define  q_and 129 
#define  q_or 128 

__attribute__((used)) static inline void FUNC6 (query_t *Q) {
  int a = Q->left->max_res, b = Q->right->max_res, r;
  switch (Q->type) {
  case q_and:
    if (FUNC2(a) && FUNC2(b)) {
      r = FUNC5 (a, b);
    } else if (FUNC2(a)) {
      r = a;
    } else if (FUNC2(b)) {
      r = b;
    } else if (FUNC1(a) || FUNC1(b)) {
      r = GRAY;
    } else {
      r = a + b + 1;
      if (r < ~INFTY) {
	r = ~INFTY;
      }
    }
    break;
  case q_or:
    if (FUNC0(a) && FUNC0(b)) {
      r = FUNC4 (a, b);
    } else if (FUNC0(a)) {
      r = a;
    } else if (FUNC0(b)) {
      r = b;
    } else if (FUNC1(a) || FUNC1(b)) {
      r = GRAY;
    } else {
      r = a + b;
      if (r > INFTY) {
	r = INFTY;
      }
    }
    break;
  default:
    FUNC3 (0);
  }
  Q->max_res = r;
  Q->complexity = Q->left->complexity + Q->right->complexity;
}