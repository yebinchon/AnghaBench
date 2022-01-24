#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ left; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_8__ {int Sp; TYPE_1__** St; } ;
typedef  TYPE_2__ tree_iterator_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static tree_t *FUNC1 (tree_iterator_t *I) {
  int sp = I->Sp;
  if (!sp) {
    return 0;
  }
  tree_t *T = I->St[--sp];
  I->Sp = sp;
  if (T->left) {
    return FUNC0 (I, T->left);
  } else if (sp) {
    return I->St[sp - 1];
  } else {
    return 0;
  }
}