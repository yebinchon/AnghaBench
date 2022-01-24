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
 int WB ; 
 int WRITE_BUFFER_SIZE ; 
 int WRITE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int wptr ; 
 int wst ; 

void FUNC2 (int x) {
  if (x < 0) {
    x = WRITE_THRESHOLD;
  }
  FUNC0 (x > 0 && x <= WRITE_THRESHOLD);
  if (!wptr) {
    wptr = wst = WB;
  }
  if (WB + WRITE_BUFFER_SIZE - wptr < x) {
    FUNC1();
  }
}