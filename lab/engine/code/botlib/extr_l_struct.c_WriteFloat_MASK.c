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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,float) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,float) ; 
 int FUNC3 (char*) ; 

int FUNC4(FILE *fp, float value)
{
	char buf[128];
	int l;

#ifdef BSPC
	snprintf(buf, sizeof(buf), "%f", value);
#else
	FUNC0(buf, sizeof(buf), "%f", value);
#endif
	l = FUNC3(buf);
	//strip any trailing zeros
	while(l-- > 1)
	{
		if (buf[l] != '0' && buf[l] != '.') break;
		if (buf[l] == '.')
		{
			buf[l] = 0;
			break;
		} //end if
		buf[l] = 0;
	} //end while
	//write the float to file
	if (FUNC1(fp, "%s", buf) < 0) return 0;
	return 1;
}