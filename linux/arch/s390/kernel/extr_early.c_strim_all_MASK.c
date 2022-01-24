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
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static inline void FUNC5(char *str)
{
	char *s;

	s = FUNC3(str);
	if (s != str)
		FUNC1(str, s, FUNC4(s));
	while (*str) {
		if (!FUNC0(*str++))
			continue;
		if (FUNC0(*str)) {
			s = FUNC2(str);
			FUNC1(str, s, FUNC4(s) + 1);
		}
	}
}