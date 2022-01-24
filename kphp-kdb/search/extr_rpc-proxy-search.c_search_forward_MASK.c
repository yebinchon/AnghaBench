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
 int TL_SEARCH_CHANGE_RATES ; 
 int TL_SEARCH_DELETE_WITH_HASH ; 
 int TL_SEARCH_DELETE_WITH_HASHES ; 
 int TL_SEARCH_INCR_RATE_BY_HASH ; 
 int TL_SEARCH_SEARCH ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  search_gather_methods ; 
 int FUNC3 () ; 

int FUNC4 (void) {
  int op = FUNC3 ();
  if (op == TL_SEARCH_SEARCH) {
    FUNC2 (&search_gather_methods);
    return 0;
  } else if (op == TL_SEARCH_DELETE_WITH_HASH || op == TL_SEARCH_DELETE_WITH_HASHES || op == TL_SEARCH_INCR_RATE_BY_HASH || op == TL_SEARCH_CHANGE_RATES) {
    return FUNC0 ();
  } else {
    return FUNC1 ();
  }
}