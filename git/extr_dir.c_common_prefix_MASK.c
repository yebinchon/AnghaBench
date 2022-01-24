#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pathspec {TYPE_1__* items; } ;
struct TYPE_2__ {int /*<<< orphan*/  match; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct pathspec const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

char *FUNC2(const struct pathspec *pathspec)
{
	unsigned long len = FUNC0(pathspec);

	return len ? FUNC1(pathspec->items[0].match, len) : NULL;
}