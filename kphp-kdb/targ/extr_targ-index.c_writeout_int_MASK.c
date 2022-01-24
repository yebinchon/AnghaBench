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
 int BUFFSIZE ; 
 int Buff ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int wptr ; 

__attribute__((used)) static inline void FUNC2 (int value) {
  if (FUNC1 (wptr > Buff + BUFFSIZE - 4)) {
    FUNC0();
  }
  *((int *) wptr) = value;
  wptr += 4;
}