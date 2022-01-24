#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  port; } ;
struct TYPE_4__ {int time; int start; int /*<<< orphan*/  info; TYPE_2__ adr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 int MAX_PINGREQUESTS ; 
 char* FUNC2 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 () ; 
 TYPE_1__* cl_pinglist ; 

void FUNC5( int n, char *buf, int buflen, int *pingtime )
{
	const char	*str;
	int		time;
	int		maxPing;

	if (n < 0 || n >= MAX_PINGREQUESTS || !cl_pinglist[n].adr.port)
	{
		// empty or invalid slot
		buf[0]    = '\0';
		*pingtime = 0;
		return;
	}

	str = FUNC2( cl_pinglist[n].adr );
	FUNC3( buf, str, buflen );

	time = cl_pinglist[n].time;
	if (!time)
	{
		// check for timeout
		time = FUNC4() - cl_pinglist[n].start;
		maxPing = FUNC1( "cl_maxPing" );
		if( maxPing < 100 ) {
			maxPing = 100;
		}
		if (time < maxPing)
		{
			// not timed out yet
			time = 0;
		}
	}

	FUNC0(cl_pinglist[n].adr, cl_pinglist[n].info, cl_pinglist[n].time);

	*pingtime = time;
}