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
typedef  int /*<<< orphan*/  zval ;
struct tl_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC2 (struct tl_tree*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  tmp ; 

zval **FUNC4 (struct tl_tree *T) {
  FUNC3 ();
  FUNC1 (tmp);
  zval **r = FUNC2 (T);
  FUNC0 (tmp);
  return r;
}