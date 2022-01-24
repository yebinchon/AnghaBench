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
typedef  int /*<<< orphan*/ **** zval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ****** (*) (int /*<<< orphan*/ *****,char const*,int)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ****** (*) (int /*<<< orphan*/ *****,char const*,int)) ; 
 scalar_t__ FAILURE ; 
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ****** (*) (int /*<<< orphan*/ *****,char const*,int)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *****) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *****) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ******) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__,void**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,void*) ; 

zval **FUNC9 (zval *arr, const char *id, int num) {
  FUNC0 (get_field);
  FUNC2 (get_field);
  FUNC5 (&arr);
//  fprintf (stderr, "arr = %p, type = %d\n", arr, (int)Z_TYPE_PP (arr));
  if (FUNC4 (arr) != IS_ARRAY) {
//    fprintf (stderr, "=(\n");
    FUNC1 (get_field);
    return 0;
  }
//  fprintf (stderr, ".\n");
//  fprintf (stderr, "%s\n", id);
//  fprintf (stderr, "%d\n", id ?(int) strlen (id) : -2);
  zval **t = 0;
  if (id && FUNC6 (id) && FUNC7 (FUNC3 (arr), (char *) id, FUNC6 (id) + 1, (void **)&t) != FAILURE) {
    FUNC5 (t);
    FUNC1 (get_field);
    return t;
  }
  if (FUNC8 (FUNC3 (arr), num, (void *)&t) != FAILURE) {
    FUNC5 (t);
    FUNC1 (get_field);
    return t;
  }
  FUNC1 (get_field);
  return 0;
}