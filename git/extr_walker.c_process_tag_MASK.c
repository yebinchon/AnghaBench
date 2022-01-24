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
struct walker {int dummy; } ;
struct tag {int /*<<< orphan*/  tagged; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tag*) ; 
 int FUNC1 (struct walker*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct walker *walker, struct tag *tag)
{
	if (FUNC0(tag))
		return -1;
	return FUNC1(walker, tag->tagged);
}