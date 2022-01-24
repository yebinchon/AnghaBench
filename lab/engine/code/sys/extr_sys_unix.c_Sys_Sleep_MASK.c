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
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ stdinIsATTY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4( int msec )
{
	if( msec == 0 )
		return;

	if( stdinIsATTY )
	{
		fd_set fdset;

		FUNC1(&fdset);
		FUNC0(STDIN_FILENO, &fdset);
		if( msec < 0 )
		{
			FUNC2(STDIN_FILENO + 1, &fdset, NULL, NULL, NULL);
		}
		else
		{
			struct timeval timeout;

			timeout.tv_sec = msec/1000;
			timeout.tv_usec = (msec%1000)*1000;
			FUNC2(STDIN_FILENO + 1, &fdset, NULL, NULL, &timeout);
		}
	}
	else
	{
		// With nothing to select() on, we can't wait indefinitely
		if( msec < 0 )
			msec = 10;

		FUNC3( msec * 1000 );
	}
}