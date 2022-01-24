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
 size_t MAX_OIDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char***,int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

void FUNC7(void)
{
#define MAX_OIDS 1000

	git_oid_shorten *os;
	size_t i, j;
	int min_len = 0, found_collision;
	char **oids;

	os = FUNC4(0);
	FUNC0(os != NULL);

	/*
	 * Insert in the shortener 1000 unique SHA1 ids
	 */
	min_len = FUNC5(&oids, os, MAX_OIDS, MAX_OIDS);
	FUNC0(min_len > 0);

	/*
	 * Compare the first `min_char - 1` characters of each
	 * SHA1 OID. If the minimizer worked, we should find at
	 * least one collision
	 */
	found_collision = 0;
	for (i = 0; i < MAX_OIDS; ++i) {
		for (j = i + 1; j < MAX_OIDS; ++j) {
			if (FUNC6(oids[i], oids[j], min_len - 1) == 0)
				found_collision = 1;
		}
	}
	FUNC1(true, found_collision);

	/*
	 * Compare the first `min_char` characters of each
	 * SHA1 OID. If the minimizer worked, every single preffix
	 * should be unique.
	 */
	found_collision = 0;
	for (i = 0; i < MAX_OIDS; ++i) {
		for (j = i + 1; j < MAX_OIDS; ++j) {
			if (FUNC6(oids[i], oids[j], min_len) == 0)
				found_collision = 1;
		}
	}
	FUNC1(false, found_collision);

	/* cleanup */
	FUNC2(MAX_OIDS, oids);
	FUNC3(os);

#undef MAX_OIDS
}