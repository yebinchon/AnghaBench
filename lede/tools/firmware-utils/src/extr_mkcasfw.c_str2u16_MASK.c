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
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 int FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 

int
FUNC1(char *arg, uint16_t *val)
{
	char *err = NULL;
	uint32_t t;

	errno=0;
	t = FUNC0(arg, &err, 0);
	if (errno || (err==arg) || ((err != NULL) && *err) || (t >= 0x10000)) {
		return -1;
	}

	*val = t & 0xFFFF;
	return 0;
}