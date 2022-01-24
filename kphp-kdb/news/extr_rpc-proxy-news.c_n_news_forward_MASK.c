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
 int TL_NNEWS_DELETE_UPDATE ; 
 int TL_NNEWS_DELETE_UPDATES ; 
 int TL_NNEWS_UNDELETE_UPDATE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

int FUNC3 (void) {
  int op = FUNC2 ();
  if (op == TL_NNEWS_DELETE_UPDATES || op == TL_NNEWS_DELETE_UPDATE || op == TL_NNEWS_UNDELETE_UPDATE) {
    FUNC1 ();
    return 0;
  } else {
    return FUNC0 ();
  }
}