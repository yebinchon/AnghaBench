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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 char* FUNC0 (struct device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

char *FUNC3(struct device *dev, const char *s, gfp_t gfp)
{
	size_t size;
	char *buf;

	if (!s)
		return NULL;

	size = FUNC2(s) + 1;
	buf = FUNC0(dev, size, gfp);
	if (buf)
		FUNC1(buf, s, size);
	return buf;
}