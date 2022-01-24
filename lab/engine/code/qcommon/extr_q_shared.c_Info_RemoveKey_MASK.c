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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_INFO_KEY ; 
 scalar_t__ MAX_INFO_STRING ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

void FUNC5( char *s, const char *key ) {
	char	*start;
	char	pkey[MAX_INFO_KEY];
	char	value[MAX_INFO_VALUE];
	char	*o;

	if ( FUNC4( s ) >= MAX_INFO_STRING ) {
		FUNC0( ERR_DROP, "Info_RemoveKey: oversize infostring" );
	}

	if (FUNC2 (key, '\\')) {
		return;
	}

	while (1)
	{
		start = s;
		if (*s == '\\')
			s++;
		o = pkey;
		while (*s != '\\')
		{
			if (!*s)
				return;
			*o++ = *s++;
		}
		*o = 0;
		s++;

		o = value;
		while (*s != '\\' && *s)
		{
			if (!*s)
				return;
			*o++ = *s++;
		}
		*o = 0;

		if (!FUNC3 (key, pkey) )
		{
			FUNC1(start, s, FUNC4(s) + 1); // remove this part
			
			return;
		}

		if (!*s)
			return;
	}

}