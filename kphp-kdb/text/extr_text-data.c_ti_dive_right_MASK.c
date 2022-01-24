#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* right; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_7__ {int Sp; TYPE_1__** St; } ;
typedef  TYPE_2__ tree_iterator_t ;

/* Variables and functions */
 int MAX_SP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static tree_t *FUNC1 (tree_iterator_t *I, tree_t *T) {
  int sp = I->Sp;
  while (1) {
    I->St[sp++] = T;
    FUNC0 (sp < MAX_SP);
    if (!T->right) {
      I->Sp = sp;
      return T;
    }
    T = T->right;
  }
}