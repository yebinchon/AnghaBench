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
 double MEDIUM_REQUEST_DELAY ; 
 double* REQUEST_DELAY ; 
 double SLOW_REQUEST_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 () ; 
 double FUNC2 (double) ; 

void FUNC3 (void) {
  double e = FUNC1 ();
  if (e < 0.1) {
    e = 0.1;
  }
  e = -FUNC2 (e);
  FUNC0 (e >= 0);
  REQUEST_DELAY[0] = SLOW_REQUEST_DELAY * e;
  REQUEST_DELAY[1] = MEDIUM_REQUEST_DELAY * e;
  REQUEST_DELAY[2] = -0.1;
}