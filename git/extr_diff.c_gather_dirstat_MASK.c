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
struct dirstat_file {char* name; unsigned long changed; } ;
struct dirstat_dir {int permille; int /*<<< orphan*/  cumulative; scalar_t__ nr; struct dirstat_file* files; } ;
struct diff_options {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 char* FUNC0 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int,int,int,char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static long FUNC5(struct diff_options *opt, struct dirstat_dir *dir,
		unsigned long changed, const char *base, int baselen)
{
	unsigned long sum_changes = 0;
	unsigned int sources = 0;
	const char *line_prefix = FUNC0(opt);

	while (dir->nr) {
		struct dirstat_file *f = dir->files;
		int namelen = FUNC4(f->name);
		unsigned long changes;
		char *slash;

		if (namelen < baselen)
			break;
		if (FUNC2(f->name, base, baselen))
			break;
		slash = FUNC3(f->name + baselen, '/');
		if (slash) {
			int newbaselen = slash + 1 - f->name;
			changes = FUNC5(opt, dir, changed, f->name, newbaselen);
			sources++;
		} else {
			changes = f->changed;
			dir->files++;
			dir->nr--;
			sources += 2;
		}
		sum_changes += changes;
	}

	/*
	 * We don't report dirstat's for
	 *  - the top level
	 *  - or cases where everything came from a single directory
	 *    under this directory (sources == 1).
	 */
	if (baselen && sources != 1) {
		if (sum_changes) {
			int permille = sum_changes * 1000 / changed;
			if (permille >= dir->permille) {
				FUNC1(opt->file, "%s%4d.%01d%% %.*s\n", line_prefix,
					permille / 10, permille % 10, baselen, base);
				if (!dir->cumulative)
					return 0;
			}
		}
	}
	return sum_changes;
}