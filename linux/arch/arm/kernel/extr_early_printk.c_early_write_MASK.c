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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(const char *s, unsigned n)
{
	char buf[128];
	while (n) {
		unsigned l = FUNC1(n, sizeof(buf)-1);
		FUNC0(buf, s, l);
		buf[l] = 0;
		s += l;
		n -= l;
		FUNC2(buf);
	}
}