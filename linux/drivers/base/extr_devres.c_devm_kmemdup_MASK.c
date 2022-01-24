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
 void* FUNC0 (struct device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 

void *FUNC2(struct device *dev, const void *src, size_t len, gfp_t gfp)
{
	void *p;

	p = FUNC0(dev, len, gfp);
	if (p)
		FUNC1(p, src, len);

	return p;
}