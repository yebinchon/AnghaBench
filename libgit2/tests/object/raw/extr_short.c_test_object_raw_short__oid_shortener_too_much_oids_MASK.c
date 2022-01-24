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
typedef  int /*<<< orphan*/  git_oid_shorten ;

/* Variables and functions */
 scalar_t__ MAX_OIDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char***,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

void FUNC5(void)
{
    /* The magic number of oids at which an oid_shortener will fail.
     * This was experimentally established. */
#define MAX_OIDS 24556

	git_oid_shorten *os;
	char **oids;

	os = FUNC3(0);
	FUNC0(os != NULL);

	FUNC0(FUNC4(&oids, os, MAX_OIDS, MAX_OIDS - 1) < 0);

	FUNC1(MAX_OIDS, oids);
	FUNC2(os);

#undef MAX_OIDS
}