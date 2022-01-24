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
struct TYPE_6__ {int y; struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef  TYPE_1__ ltree_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (long long,int,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (long long,int,int) ; 

__attribute__((used)) static ltree_t *FUNC2 (ltree_t *T, long long x, int y, int z) {
  ltree_t *Root = T, **U = &Root, **L, **R;

  while (T && T->y >= y) {
    U = FUNC0 (x, z, T) ? &T->left : &T->right;
    T = *U;
  }

  *U = FUNC1 (x, y, z);


  L = &(*U)->left;
  R = &(*U)->right;

  while (T) {
    if (FUNC0 (x, z, T)) {
      *R = T;
      R = &T->left;
      T = *R;
    } else {
      *L = T;
      L = &T->right;
      T = *L;
    }
  }

  *L = *R = 0;

  return Root;
}