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

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_UNKNOWN_FUNCTION_ID ; 
 int TL_HINTS_DELETE_OBJECT_GLOBAL ; 
 int TL_HINTS_GET_HINTS ; 
 int TL_HINTS_GET_HINTS_FULL ; 
 int TL_HINTS_GET_HINTS_LATIN ; 
 int TL_HINTS_GET_HINTS_LATIN_FULL ; 
 int TL_HINTS_GET_HINTS_LATIN_RATING ; 
 int TL_HINTS_GET_HINTS_LATIN_TEXT ; 
 int TL_HINTS_GET_HINTS_RATING ; 
 int TL_HINTS_GET_HINTS_TEXT ; 
 int TL_HINTS_GET_RANDOM ; 
 int TL_HINTS_SET_TEXT_GLOBAL ; 
 int TL_HINTS_SET_TYPE_GLOBAL ; 
 int TL_HINTS_SORT ; 
 int TL_RATING_DELETE_OBJECT_GLOBAL ; 
 int TL_RATING_GET_HINTS ; 
 int TL_RATING_GET_HINTS_RATING ; 
 int TL_RATING_GET_RANDOM ; 
 int TL_RATING_GET_RANDOM_HINTS ; 
 int TL_RATING_GET_RANDOM_HINTS_RATING ; 
 int TL_RATING_SET_TYPE_GLOBAL ; 
 int TL_RATING_SORT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  hints_gather_methods ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC4 (void) {
  int op = FUNC2 ();
  if (op == TL_HINTS_GET_HINTS ||
      op == TL_HINTS_GET_HINTS_RATING ||
      op == TL_HINTS_GET_HINTS_LATIN ||
      op == TL_HINTS_GET_HINTS_LATIN_RATING ||
      op == TL_RATING_GET_HINTS ||
      op == TL_RATING_GET_HINTS_RATING) {
    FUNC1 (&hints_gather_methods);
    return 0;
  } else if (op == TL_HINTS_SET_TEXT_GLOBAL ||
             op == TL_HINTS_SET_TYPE_GLOBAL ||
             op == TL_HINTS_DELETE_OBJECT_GLOBAL ||
             op == TL_RATING_SET_TYPE_GLOBAL ||
             op == TL_RATING_DELETE_OBJECT_GLOBAL || 
             op == TL_HINTS_GET_HINTS_TEXT || 
             op == TL_HINTS_GET_HINTS_FULL || 
             op == TL_HINTS_GET_HINTS_LATIN_TEXT || 
             op == TL_HINTS_GET_HINTS_LATIN_FULL ||
             op == TL_RATING_GET_RANDOM_HINTS ||
             op == TL_RATING_GET_RANDOM_HINTS_RATING ||
             op == TL_HINTS_SORT ||
             op == TL_HINTS_GET_RANDOM ||
             op == TL_RATING_SORT ||
             op == TL_RATING_GET_RANDOM) {
    FUNC3 (TL_ERROR_UNKNOWN_FUNCTION_ID, "Unsupported function %08x", op);
    return -1;
  } else {
    return FUNC0 ();
  }
}