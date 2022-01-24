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
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  set_field ; 
 scalar_t__ FUNC9 (char const*) ; 

void FUNC10 (zval **arr, char *val, const char *id, int num) {
  FUNC0 (set_field);
  FUNC3 (set_field);
  if (!*arr) {
    FUNC2 (*arr);
    FUNC7 (*arr);
  }
  FUNC8 (val);
  FUNC8 (*arr && FUNC4 (arr) == IS_ARRAY);

  if (id && FUNC9 (id)) {
    FUNC5 (*arr, (char *) id, val, 1);
  } else {
    FUNC6 (*arr, num, val, 1);
  }
  FUNC1 (set_field);
}