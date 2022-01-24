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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  testingT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 

void FUNC2(testingT *t, const char *file, int line, const char *format, va_list ap)
{
	// TODO extract filename from file
	FUNC0("\t%s:%d: ", file, line);
	// TODO split into lines separated by \n\t\t and trimming trailing empty lines
	FUNC1(format, ap);
	FUNC0("\n");
}