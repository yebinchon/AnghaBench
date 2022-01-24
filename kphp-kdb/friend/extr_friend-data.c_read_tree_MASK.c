#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static tree_t *FUNC6 (void) {
  char *ptr = FUNC5 (1);
  if (!ptr) {
    FUNC1 (stderr, "Unexpected end of file in read_tree\n");
    return 0;
  }
  char c = ptr[0];
  FUNC4 (1);
  FUNC0 (c == 0 || c == 1);
  if (!c) {
    return 0;
  }
  ptr = FUNC5 (16);
  if (!ptr) {
    FUNC1 (stderr, "Unexpected end of file in read_tree\n");
    return 0;
  }
  tree_t *T = FUNC3 (0, 0);
  FUNC2 (&T->x, ptr, 16);
  FUNC4 (16);
  T->left = FUNC6 ();
  T->right = FUNC6 ();
  return T;
}