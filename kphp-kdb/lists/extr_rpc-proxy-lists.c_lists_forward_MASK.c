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
 int TL_LISTS_DELETE_OBJECT ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5 (void) {
  int op = FUNC3 ();
  if (op == TL_LISTS_DELETE_OBJECT) {
    return FUNC0 ();
  } else {
    FUNC4 ();
    FUNC2 ();
    int n = FUNC2 ();    
    return FUNC1 (n);
  }
}