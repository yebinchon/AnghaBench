#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; int /*<<< orphan*/  x1; } ;
typedef  TYPE_1__ rev_friends_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2 (rev_friends_t *T) {
  if (T) {
    FUNC1 (4);
  } else {
    FUNC1 (3);
    return;
  }
  FUNC0 (&T->x1, 16);
  FUNC2 (T->left);
  FUNC2 (T->right);
}