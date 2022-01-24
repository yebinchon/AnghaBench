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
struct packed_git {int /*<<< orphan*/  hash; int /*<<< orphan*/  pack_name; } ;

/* Variables and functions */
 struct packed_git* FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (char const*,struct packed_git*) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 char* FUNC5 (unsigned char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

struct packed_git *FUNC8(unsigned char *sha1, const char *idx_path)
{
	const char *path = FUNC5(sha1);
	size_t alloc = FUNC6(FUNC7(path), 1);
	struct packed_git *p = FUNC0(alloc);

	FUNC4(p->pack_name, path, alloc); /* includes NUL */
	FUNC3(p->hash, sha1);
	if (FUNC1(idx_path, p)) {
		FUNC2(p);
		return NULL;
	}

	return p;
}