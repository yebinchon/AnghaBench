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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char const* FUNC1 (char*) ; 

__attribute__((used)) static const char *FUNC2(int stagemask)
{
	switch (stagemask) {
	case 1:
		return FUNC1("both deleted:");
	case 2:
		return FUNC1("added by us:");
	case 3:
		return FUNC1("deleted by them:");
	case 4:
		return FUNC1("added by them:");
	case 5:
		return FUNC1("deleted by us:");
	case 6:
		return FUNC1("both added:");
	case 7:
		return FUNC1("both modified:");
	default:
		FUNC0("unhandled unmerged status %x", stagemask);
	}
}