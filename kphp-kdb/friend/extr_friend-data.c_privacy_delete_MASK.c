#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ x; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef  TYPE_1__ privacy_t ;
typedef  scalar_t__ privacy_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static privacy_t *FUNC2 (privacy_t *T, privacy_key_t x) {
  if (T->x == x) {
    privacy_t *N = FUNC1 (T->left, T->right);
    FUNC0 (T);
    return N;
  }
  if (x < T->x) {
    T->left = FUNC2 (T->left, x);
  } else {
    T->right = FUNC2 (T->right, x);
  }
  return T;
}