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
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static int FUNC1(void **old, void *new)
{
	FUNC0(*old);
	*old = new;
	return GIT_EEXISTS;
}