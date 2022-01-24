#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oid_hex ;
struct TYPE_6__ {int page_size; } ;
typedef  TYPE_1__ git_pool ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 char* to_hex ; 

void FUNC9(void)
{
	git_pool p;
	char oid_hex[GIT_OID_HEXSZ];
	git_oid *oid;
	int i, j;

	FUNC8(oid_hex, '0', sizeof(oid_hex));

	FUNC6(&p, sizeof(git_oid));
	p.page_size = 4000;

	for (i = 1000; i < 10000; i++) {
		oid = FUNC7(&p, 1);
		FUNC0(oid != NULL);

		for (j = 0; j < 8; j++)
			oid_hex[j] = to_hex[(i >> (4 * j)) & 0x0f];
		FUNC2(FUNC3(oid, oid_hex));
	}

#ifndef GIT_DEBUG_POOL
	/* with fixed page size, allocation must end up with these values */
	FUNC1(sizeof(void *) == 8 ? 55 : 45, FUNC4(&p));
#endif
	FUNC5(&p);
}