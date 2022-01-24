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
 int FUNC0 () ; 
 int FUNC1 () ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int,int) ; 

const char *FUNC4(void)
{
	static char buf[128];
	FUNC3(buf, sizeof(buf), "bcm63xx/%s (0x%04x/0x%02X)",
		 FUNC2(),
		 FUNC0(), FUNC1());
	return buf;
}