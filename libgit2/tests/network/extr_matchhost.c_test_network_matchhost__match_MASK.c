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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void FUNC3(void)
{
	FUNC1(FUNC2("*.example.org", "www.example.org"));
	FUNC1(FUNC2("*.foo.example.org", "www.foo.example.org"));
	FUNC0(FUNC2("*.foo.example.org", "foo.example.org"));
	FUNC0(FUNC2("*.foo.example.org", "www.example.org"));
	FUNC0(FUNC2("*.example.org", "example.org"));
	FUNC0(FUNC2("*.example.org", "www.foo.example.org"));
	FUNC0(FUNC2("*.example.org", "blah.www.www.example.org"));
}