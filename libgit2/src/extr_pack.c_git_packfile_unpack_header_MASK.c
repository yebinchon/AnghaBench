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
typedef  unsigned long git_off_t ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_mwindow_file ;
typedef  int /*<<< orphan*/  git_mwindow ;

/* Variables and functions */
 int GIT_EBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned long,int,unsigned int*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (unsigned long*,size_t*,int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 

int FUNC4(
		size_t *size_p,
		git_object_t *type_p,
		git_mwindow_file *mwf,
		git_mwindow **w_curs,
		git_off_t *curpos)
{
	unsigned char *base;
	unsigned int left;
	unsigned long used;
	int ret;

	/* pack_window_open() assures us we have [base, base + 20) available
	 * as a range that we can look at at. (Its actually the hash
	 * size that is assured.) With our object header encoding
	 * the maximum deflated object size is 2^137, which is just
	 * insane, so we know won't exceed what we have been given.
	 */
/*	base = pack_window_open(p, w_curs, *curpos, &left); */
	base = FUNC1(mwf, w_curs, *curpos, 20, &left);
	if (base == NULL)
		return GIT_EBUFS;

	ret = FUNC3(&used, size_p, type_p, base, left);
	FUNC0(w_curs);
	if (ret == GIT_EBUFS)
		return ret;
	else if (ret < 0)
		return FUNC2("header length is zero");

	*curpos += used;
	return 0;
}