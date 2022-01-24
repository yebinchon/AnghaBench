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
struct func {int dummy; } ;
struct file {char* name; struct file* link; scalar_t__ funcs; scalar_t__ counts; scalar_t__ count; scalar_t__ size; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERM ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int,struct func*) ; 
 struct func* FUNC3 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct file* filelist ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 char* FUNC8 () ; 

__attribute__((used)) static int FUNC9(void) {
	int i, nfiles, nfuncs, npoints;
	char *files[64];

	if ((nfiles = FUNC7()) < 0)
		return 0;
	FUNC5(nfiles < FUNC0(files));
	for (i = 0; i < nfiles; i++) {
		if ((files[i] = FUNC8()) == 0)
			return -1;
		if (!FUNC6(files[i])) {
			struct file *new;
			FUNC1(new, PERM);
			new->name = files[i];
			new->size = new->count = 0;
			new->counts = 0;
			new->funcs = 0;
			new->link = filelist;
			filelist = new;
		}
	}
	if ((nfuncs = FUNC7()) < 0)
		return -1;
	for (i = 0; i < nfuncs; i++) {
		struct func *q;
		char *name, *file;
		int f, x, y, count;
		if ((name = FUNC8()) == 0 || (f = FUNC7()) <= 0
		|| (x = FUNC7()) < 0 || (y = FUNC7()) < 0 || (count = FUNC7()) < 0)
			return -1;
		q = FUNC3(name, files[f-1], x, y, count);
		if ((name = FUNC8()) == 0 || (file = FUNC8()) == 0
		|| (x = FUNC7()) < 0 || (y = FUNC7()) < 0)
			return -1;
		if (*name != '?')
			FUNC2(name, file, x, y, count, q);
	}
	if ((npoints = FUNC7()) < 0)
		return -1;
	for (i = 0; i < npoints; i++) {
		int f, x, y, count;
		if ((f = FUNC7()) < 0 || (x = FUNC7()) < 0 || (y = FUNC7()) < 0
		|| (count = FUNC7()) < 0)
			return -1;
		if (f)
			FUNC4(i, files[f-1], x, y, count);
	}
	return 1;
}