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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t EI_CLASS ; 
 int EI_NIDENT ; 
 unsigned char ELFCLASS64 ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (unsigned char**,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(int argc, char **argv)
{
	int show_reloc_info, as_text, as_bin, keep_relocs;
	const char *fname;
	FILE *fp;
	int i;
	unsigned char e_ident[EI_NIDENT];

	show_reloc_info = 0;
	as_text = 0;
	as_bin = 0;
	keep_relocs = 0;
	fname = NULL;
	for (i = 1; i < argc; i++) {
		char *arg = argv[i];

		if (*arg == '-') {
			if (FUNC7(arg, "--reloc-info") == 0) {
				show_reloc_info = 1;
				continue;
			}
			if (FUNC7(arg, "--text") == 0) {
				as_text = 1;
				continue;
			}
			if (FUNC7(arg, "--bin") == 0) {
				as_bin = 1;
				continue;
			}
			if (FUNC7(arg, "--keep") == 0) {
				keep_relocs = 1;
				continue;
			}
		} else if (!fname) {
			fname = arg;
			continue;
		}
		FUNC9();
	}
	if (!fname)
		FUNC9();

	fp = FUNC2(fname, "r+");
	if (!fp)
		FUNC0("Cannot open %s: %s\n", fname, FUNC8(errno));

	if (FUNC3(&e_ident, 1, EI_NIDENT, fp) != EI_NIDENT)
		FUNC0("Cannot read %s: %s", fname, FUNC8(errno));

	FUNC6(fp);
	if (e_ident[EI_CLASS] == ELFCLASS64)
		FUNC5(fp, as_text,  as_bin, show_reloc_info, keep_relocs);
	else
		FUNC4(fp, as_text, as_bin, show_reloc_info, keep_relocs);
	FUNC1(fp);
	return 0;
}