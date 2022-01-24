#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tl_expression {int /*<<< orphan*/ * right; int /*<<< orphan*/ * left; int /*<<< orphan*/  right_name; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_expression*,int) ; 

__attribute__((used)) static void FUNC3 (struct tl_expression *E) {
  FUNC0 (&E->text);
  FUNC0 (&E->right_name);
  FUNC1 (E->left); E->left = NULL;
  FUNC1 (E->right); E->right = NULL;
  FUNC2 (E, sizeof (*E));
}