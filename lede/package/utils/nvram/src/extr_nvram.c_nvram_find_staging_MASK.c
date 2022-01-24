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
struct stat {int st_mode; } ;

/* Variables and functions */
 char* NVRAM_STAGING ; 
 int S_IFREG ; 
 int FUNC0 (char*,struct stat*) ; 

char * FUNC1(void)
{
	struct stat s;

	if( (FUNC0(NVRAM_STAGING, &s) > -1) && (s.st_mode & S_IFREG) )
	{
		return NVRAM_STAGING;
	}

	return NULL;
}