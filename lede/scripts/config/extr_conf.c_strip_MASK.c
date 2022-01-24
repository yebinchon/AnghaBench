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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *str)
{
	char *p = str;
	int l;

	while ((FUNC0(*p)))
		p++;
	l = FUNC2(p);
	if (p != str)
		FUNC1(str, p, l + 1);
	if (!l)
		return;
	p = str + l - 1;
	while ((FUNC0(*p)))
		*p-- = 0;
}