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
typedef  int iconv_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 unsigned int FUNC1 (char const*) ; 

iconv_t FUNC2(const char *to, const char *from)
{
	unsigned f, t;
	int m;

	if ((t = FUNC1(to)) > 8)
		return -1;

	if ((f = FUNC1(from)) < 255)
		return 0 | (t<<1) | (f<<8);

	if ((m = FUNC0(from)) > -1)
		return 1 | (t<<1) | (m<<8);

	return -1;
}