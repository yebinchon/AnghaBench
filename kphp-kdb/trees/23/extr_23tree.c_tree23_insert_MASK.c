#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int x1; int x2; struct TYPE_7__* right; struct TYPE_7__* middle; struct TYPE_7__* left; } ;
typedef  TYPE_1__ tree23_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2 (tree23_t **T, int x) {
  tree23_t *st[100];
  tree23_t *cur, *s, *l;
  int sp;

  //empty tree case
  if (!*T) *T = FUNC0 (x);
  else {
    sp = 0;
    cur = *T;
    while (!(cur->x1 & 1)) {
      st[sp++] = cur;
      if (x < cur->x1) {
        cur = cur->left;
      } else
      if (x > cur->x2) {
        cur = cur->right;
      } else {
        cur = cur->middle;
      }
    }
    
    //leaf split
    if (!(cur->x2 & 1)) {
      //case 1. two-element leaf
      if (x < cur->x1) {
        s = FUNC0 (x);
        x = cur->x1 & -2;
        cur->x1 = cur->x2 |= 1;
        l = cur;
      } else
      if (x > cur->x2) {
        l = FUNC0 (x);
        x = cur->x2;
        cur->x2 = cur->x1;
        s = cur;
      } else {
        l = FUNC0 (cur->x2);
        cur->x2 = cur->x1;
        s = cur;
      }
    } else {
      //case 2. single-element leaf
      if (x < cur->x1) {
        cur->x2 = cur->x1 & -2;
        cur->x1 = x | 1;
      } else {
        cur->x2 = x;
      }
      return;
    }

    while (sp) {
      cur = st[--sp];
      if (!(cur->x2 & 1)) {
        //case 1. two-element internal node
        if (x < cur->x1) {
          // s l middle right
          s = FUNC1 (x, s, l);
          x = cur->x1;
          cur->x1 = cur->x2;
          cur->x2 |= 1;
          cur->left = cur->middle;
          l = cur;
        } else
        if (x > cur->x2) {
          //left middle s l
          l = FUNC1 (x, s, l);
          x = cur->x2;
          cur->right = cur->middle;
          cur->x2 = cur->x1 | 1;
          s = cur;
        } else {
          //left s l right
          l = FUNC1 (cur->x2, l, cur->right);
          cur->right = s;
          cur->x2 = cur->x1 | 1;
          s = cur;
        }
      } else {
        //case 2. single-element internal node
        if (x < cur->x1) {
          //s l right
          cur->left = s;
          cur->middle = l;
          cur->x2 &= -2;
          cur->x1 = x;
        } else {
          //left s l 
          cur->middle = s;
          cur->right = l;
          cur->x2 = x;
        }
        return;
      }

    };

    //root split
    *T = FUNC1 (x, s, l);
  }
}