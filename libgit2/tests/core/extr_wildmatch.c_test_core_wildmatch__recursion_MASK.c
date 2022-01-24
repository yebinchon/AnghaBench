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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int) ; 

void FUNC1(void)
{
	FUNC0("-adobe-courier-bold-o-normal--12-120-75-75-m-70-iso8859-1", "-*-*-*-*-*-*-12-*-*-*-m-*-*-*", 1, 1, 1, 1);
	FUNC0("-adobe-courier-bold-o-normal--12-120-75-75-X-70-iso8859-1", "-*-*-*-*-*-*-12-*-*-*-m-*-*-*", 0, 0, 0, 0);
	FUNC0("-adobe-courier-bold-o-normal--12-120-75-75-/-70-iso8859-1", "-*-*-*-*-*-*-12-*-*-*-m-*-*-*", 0, 0, 0, 0);
	FUNC0("XXX/adobe/courier/bold/o/normal//12/120/75/75/m/70/iso8859/1", "XXX/*/*/*/*/*/*/12/*/*/*/m/*/*/*", 1, 1, 1, 1);
	FUNC0("XXX/adobe/courier/bold/o/normal//12/120/75/75/X/70/iso8859/1", "XXX/*/*/*/*/*/*/12/*/*/*/m/*/*/*", 0, 0, 0, 0);
	FUNC0("abcd/abcdefg/abcdefghijk/abcdefghijklmnop.txt", "**/*a*b*g*n*t", 1, 1, 1, 1);
	FUNC0("abcd/abcdefg/abcdefghijk/abcdefghijklmnop.txtz", "**/*a*b*g*n*t", 0, 0, 0, 0);
	FUNC0("foo", "*/*/*", 0, 0, 0, 0);
	FUNC0("foo/bar", "*/*/*", 0, 0, 0, 0);
	FUNC0("foo/bba/arr", "*/*/*", 1, 1, 1, 1);
	FUNC0("foo/bb/aa/rr", "*/*/*", 0, 0, 1, 1);
	FUNC0("foo/bb/aa/rr", "**/**/**", 1, 1, 1, 1);
	FUNC0("abcXdefXghi", "*X*i", 1, 1, 1, 1);
	FUNC0("ab/cXd/efXg/hi", "*X*i", 0, 0, 1, 1);
	FUNC0("ab/cXd/efXg/hi", "*/*X*/*/*i", 1, 1, 1, 1);
	FUNC0("ab/cXd/efXg/hi", "**/*X*/**/*i", 1, 1, 1, 1);
}