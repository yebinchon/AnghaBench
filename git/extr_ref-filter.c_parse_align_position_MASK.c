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
typedef  int align_type ;

/* Variables and functions */
 int ALIGN_LEFT ; 
 int ALIGN_MIDDLE ; 
 int ALIGN_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static align_type FUNC1(const char *s)
{
	if (!FUNC0(s, "right"))
		return ALIGN_RIGHT;
	else if (!FUNC0(s, "middle"))
		return ALIGN_MIDDLE;
	else if (!FUNC0(s, "left"))
		return ALIGN_LEFT;
	return -1;
}