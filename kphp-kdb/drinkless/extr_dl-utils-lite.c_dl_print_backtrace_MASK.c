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
 int FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3 (void) {
  void *buffer[64];
  int nptrs = FUNC0 (buffer, 64);
  FUNC2 (stderr, "\n------- Stack Backtrace -------\n");
  FUNC1 (buffer, nptrs, 2);
  FUNC2 (stderr, "-------------------------------\n");
}