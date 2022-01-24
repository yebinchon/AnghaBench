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
 int /*<<< orphan*/  FUNC0 (void (*) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int)) ; 
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int)) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char const*) ; 

void FUNC12 (zval **arr, zval *val, const char *id, int num) {
  FUNC0 (set_field);
  FUNC3 (set_field);
  if (!*arr) {
    FUNC2 (*arr);
    FUNC8 (*arr);
  }
  FUNC9 (val);
  FUNC9 (*arr && FUNC5 (arr) == IS_ARRAY);
#ifdef VLOG
  fprintf (stderr, "set_field: num:%d val_type:%d arr:%p\n", num, Z_TYPE_P (val), *arr);
#endif
  if (id && FUNC11 (id)) {
    FUNC6 (*arr, (char *) id, val);
  } else {
    FUNC7 (*arr, num, val);
  }
  FUNC1 (set_field);
}