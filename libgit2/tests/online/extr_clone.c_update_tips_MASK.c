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
typedef  char git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(const char *refname, const git_oid *a, const git_oid *b, void *payload)
{
	int *callcount = (int*)payload;
	FUNC0(refname); FUNC0(a); FUNC0(b);
	*callcount = *callcount + 1;
	return 0;
}