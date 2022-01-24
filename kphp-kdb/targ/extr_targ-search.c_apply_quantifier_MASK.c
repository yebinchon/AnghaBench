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
struct TYPE_6__ {int complexity; int flags; int /*<<< orphan*/  max_res; struct TYPE_6__* left; } ;
typedef  TYPE_1__ query_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static query_t *FUNC2 (int quantifier, query_t *B) {
  query_t *A = FUNC1 (quantifier, 0);

  FUNC0 (A);
  A->left = B;
  A->complexity = B->complexity * 4;
  A->max_res = B->max_res;
  A->flags = 2;

  return A;
}