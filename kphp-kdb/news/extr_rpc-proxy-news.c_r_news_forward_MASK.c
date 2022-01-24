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
 int TL_RNEWS_GET_GROUPED_UPDATES ; 
 int TL_RNEWS_GET_RAW_UPDATES ; 
 int TL_RNEWS_SET_RATE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rnews_gather_methods ; 
 int /*<<< orphan*/  rnews_raw_gather_methods ; 
 int FUNC3 () ; 

int FUNC4 (void) {
  int op = FUNC3 ();
  if (op == TL_RNEWS_SET_RATE) {
    FUNC1 ();
    return 0;
  } else if (op == TL_RNEWS_GET_RAW_UPDATES) {
    FUNC2 (&rnews_raw_gather_methods);
    return 0;
  } else if (op == TL_RNEWS_GET_GROUPED_UPDATES) {
    FUNC2 (&rnews_gather_methods);
    return 0;
  } else {
    return FUNC0 ();
  }
}