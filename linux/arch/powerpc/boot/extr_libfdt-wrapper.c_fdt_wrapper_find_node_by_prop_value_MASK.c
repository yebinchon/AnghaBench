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
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  fdt ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static void *FUNC3(const void *prev,
						 const char *name,
						 const char *val,
						 int len)
{
	int offset = FUNC1(fdt, FUNC0(prev),
	                                           name, val, len);
	return FUNC2(offset);
}