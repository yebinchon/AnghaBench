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
struct progress {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct progress*) ; 
 int /*<<< orphan*/  FUNC2 (struct progress**,int /*<<< orphan*/ ) ; 

void FUNC3(struct progress **p_progress)
{
	FUNC1(*p_progress);

	FUNC2(p_progress, FUNC0("done"));
}