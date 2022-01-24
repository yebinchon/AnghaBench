#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ (* realloc ) (scalar_t__,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EXPAND_GRANULARITY ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ buf ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ fdt ; 
 int FUNC2 (scalar_t__,scalar_t__,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 TYPE_1__ platform_ops ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(int minexpand)
{
	int size = FUNC4(fdt);
	int rc;

	size = FUNC0(size + minexpand, EXPAND_GRANULARITY);
	buf = platform_ops.realloc(buf, size);
	if (!buf)
		FUNC1("Couldn't find %d bytes to expand device tree\n\r", size);
	rc = FUNC2(fdt, buf, size);
	if (rc != 0)
		FUNC1("Couldn't expand fdt into new buffer: %s\n\r",
		      FUNC3(rc));

	fdt = buf;
}