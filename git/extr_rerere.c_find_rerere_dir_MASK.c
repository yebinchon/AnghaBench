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
struct rerere_dir {scalar_t__ status_alloc; scalar_t__ status_nr; int /*<<< orphan*/ * status; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rerere_dir**,int,int /*<<< orphan*/ ) ; 
 int GIT_MAX_RAWSZ ; 
 int /*<<< orphan*/  FUNC1 (struct rerere_dir**,struct rerere_dir**,int) ; 
 scalar_t__ FUNC2 (char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*) ; 
 struct rerere_dir** rerere_dir ; 
 int /*<<< orphan*/  rerere_dir_alloc ; 
 int /*<<< orphan*/  rerere_dir_hash ; 
 int rerere_dir_nr ; 
 int /*<<< orphan*/  FUNC4 (struct rerere_dir*) ; 
 int FUNC5 (unsigned char*,struct rerere_dir**,int,int /*<<< orphan*/ ) ; 
 struct rerere_dir* FUNC6 (int) ; 

__attribute__((used)) static struct rerere_dir *FUNC7(const char *hex)
{
	unsigned char hash[GIT_MAX_RAWSZ];
	struct rerere_dir *rr_dir;
	int pos;

	if (FUNC2(hex, hash))
		return NULL; /* BUG */
	pos = FUNC5(hash, rerere_dir, rerere_dir_nr, rerere_dir_hash);
	if (pos < 0) {
		rr_dir = FUNC6(sizeof(*rr_dir));
		FUNC3(rr_dir->hash, hash);
		rr_dir->status = NULL;
		rr_dir->status_nr = 0;
		rr_dir->status_alloc = 0;
		pos = -1 - pos;

		/* Make sure the array is big enough ... */
		FUNC0(rerere_dir, rerere_dir_nr + 1, rerere_dir_alloc);
		/* ... and add it in. */
		rerere_dir_nr++;
		FUNC1(rerere_dir + pos + 1, rerere_dir + pos,
			   rerere_dir_nr - pos - 1);
		rerere_dir[pos] = rr_dir;
		FUNC4(rr_dir);
	}
	return rerere_dir[pos];
}