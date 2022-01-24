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
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 

void
FUNC1(const char *buf, size_t n)
{
	FUNC0((unsigned char*)buf,
	    n>(size_t)INT_MAX ? INT_MAX : (int)n);
}