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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2 ( char *buf, int bufsize, int value )
{
	if (value > 1024*1024*1024 ) { // gigs
		FUNC0( buf, bufsize, "%d", value / (1024*1024*1024) );
		FUNC0( buf+FUNC1(buf), bufsize-FUNC1(buf), ".%02d GB", 
			(value % (1024*1024*1024))*100 / (1024*1024*1024) );
	} else if (value > 1024*1024 ) { // megs
		FUNC0( buf, bufsize, "%d", value / (1024*1024) );
		FUNC0( buf+FUNC1(buf), bufsize-FUNC1(buf), ".%02d MB", 
			(value % (1024*1024))*100 / (1024*1024) );
	} else if (value > 1024 ) { // kilos
		FUNC0( buf, bufsize, "%d KB", value / 1024 );
	} else { // bytes
		FUNC0( buf, bufsize, "%d bytes", value );
	}
}