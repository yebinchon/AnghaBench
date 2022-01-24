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
 char* FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 

int FUNC3(char *filter, char *filename, int casesensitive)
{
	char buf[1024];
	char *ptr;
	int i, found;

	while(*filter)
	{
		if (*filter == '*')
		{
			filter++;
			for (i = 0; *filter; i++)
			{
				if (*filter == '*' || *filter == '?') break;
				buf[i] = *filter;
				filter++;
			} //end for
			buf[i] = '\0';
			if (FUNC1(buf))
			{
				ptr = FUNC0(filename, buf, casesensitive);
				if (!ptr) return false;
				filename = ptr + FUNC1(buf);
			} //end if
		} //end if
		else if (*filter == '?')
		{
			filter++;
			filename++;
		} //end else if
		else if (*filter == '[' && *(filter+1) == '[')
		{
			filter++;
		} //end if
		else if (*filter == '[')
		{
			filter++;
			found = false;
			while(*filter && !found)
			{
				if (*filter == ']' && *(filter+1) != ']') break;
				if (*(filter+1) == '-' && *(filter+2) && (*(filter+2) != ']' || *(filter+3) == ']'))
				{
					if (casesensitive)
					{
						if (*filename >= *filter && *filename <= *(filter+2)) found = true;
					} //end if
					else
					{
						if (FUNC2(*filename) >= FUNC2(*filter) &&
							FUNC2(*filename) <= FUNC2(*(filter+2))) found = true;
					} //end else
					filter += 3;
				} //end if
				else
				{
					if (casesensitive)
					{
						if (*filter == *filename) found = true;
					} //end if
					else
					{
						if (FUNC2(*filter) == FUNC2(*filename)) found = true;
					} //end else
					filter++;
				} //end else
			} //end while
			if (!found) return false;
			while(*filter)
			{
				if (*filter == ']' && *(filter+1) != ']') break;
				filter++;
			} //end while
			filter++;
			filename++;
		} //end else if
		else
		{
			if (casesensitive)
			{
				if (*filter != *filename) return false;
			} //end if
			else
			{
				if (FUNC2(*filter) != FUNC2(*filename)) return false;
			} //end else
			filter++;
			filename++;
		} //end else
	} //end while
	return true;
}