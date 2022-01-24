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
typedef  scalar_t__ git_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*) ; 

void FUNC3(void)
{
#ifdef __LP64__
   git_time_t d2038, d2039;

   /* This is expected to fail on a 32-bit machine. */
   FUNC1(FUNC2(&d2038, "2038-1-1"));
   FUNC1(FUNC2(&d2039, "2039-1-1"));
   FUNC0(d2038 < d2039);
#endif
}