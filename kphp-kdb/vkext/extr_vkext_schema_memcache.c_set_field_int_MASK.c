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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_field ; 
 scalar_t__ FUNC7 (char const*) ; 

void FUNC8 (zval **arr, int val, const char *id, int num) {
  FUNC0 (set_field);
  FUNC3 (set_field);
  if (!*arr) {
    FUNC2 (*arr);
    FUNC6 (*arr);
  }
  if (id && FUNC7 (id)) {
    FUNC4 (*arr, (char *) id, val);
  } else {
    FUNC5 (*arr, num, val);
  }
  FUNC1 (set_field);
}