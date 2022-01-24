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

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  MS_SYNC ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,void*) ; 
 void* FUNC3 (char const*,size_t*) ; 
 scalar_t__ FUNC4 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out_file ; 
 int /*<<< orphan*/  FUNC5 (char const*,void*) ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* vdso_name ; 

int FUNC8(int argc, char **argv)
{
	const char *dbg_vdso_path, *vdso_path, *out_path;
	void *dbg_vdso, *vdso;
	size_t dbg_vdso_size, vdso_size, i;

	program_name = argv[0];

	if (argc < 4 || argc > 5) {
		FUNC1(stderr,
			"Usage: %s <debug VDSO> <stripped VDSO> <output file> [<name>]\n",
			program_name);
		return EXIT_FAILURE;
	}

	dbg_vdso_path = argv[1];
	vdso_path = argv[2];
	out_path = argv[3];
	vdso_name = (argc > 4) ? argv[4] : "";

	dbg_vdso = FUNC3(dbg_vdso_path, &dbg_vdso_size);
	if (!dbg_vdso)
		return EXIT_FAILURE;

	vdso = FUNC3(vdso_path, &vdso_size);
	if (!vdso)
		return EXIT_FAILURE;

	/* Patch both the VDSOs' ABI flags sections. */
	if (!FUNC5(dbg_vdso_path, dbg_vdso))
		return EXIT_FAILURE;
	if (!FUNC5(vdso_path, vdso))
		return EXIT_FAILURE;

	if (FUNC4(dbg_vdso, dbg_vdso_size, MS_SYNC) != 0) {
		FUNC1(stderr, "%s: Failed to sync '%s': %s\n", program_name,
			dbg_vdso_path, FUNC6(errno));
		return EXIT_FAILURE;
	} else if (FUNC4(vdso, vdso_size, MS_SYNC) != 0) {
		FUNC1(stderr, "%s: Failed to sync '%s': %s\n", program_name,
			vdso_path, FUNC6(errno));
		return EXIT_FAILURE;
	}

	out_file = FUNC0(out_path, "w");
	if (!out_file) {
		FUNC1(stderr, "%s: Failed to open '%s': %s\n", program_name,
			out_path, FUNC6(errno));
		return EXIT_FAILURE;
	}

	FUNC1(out_file, "/* Automatically generated - do not edit */\n");
	FUNC1(out_file, "#include <linux/linkage.h>\n");
	FUNC1(out_file, "#include <linux/mm.h>\n");
	FUNC1(out_file, "#include <asm/vdso.h>\n");

	/* Write out the stripped VDSO data. */
	FUNC1(out_file,
		"static unsigned char vdso_data[PAGE_ALIGN(%zu)] __page_aligned_data = {\n\t",
		vdso_size);
	for (i = 0; i < vdso_size; i++) {
		if (!(i % 10))
			FUNC1(out_file, "\n\t");
		FUNC1(out_file, "0x%02x, ", ((unsigned char *)vdso)[i]);
	}
	FUNC1(out_file, "\n};\n");

	/* Preallocate a page array. */
	FUNC1(out_file,
		"static struct page *vdso_pages[PAGE_ALIGN(%zu) / PAGE_SIZE];\n",
		vdso_size);

	FUNC1(out_file, "struct mips_vdso_image vdso_image%s%s = {\n",
		(vdso_name[0]) ? "_" : "", vdso_name);
	FUNC1(out_file, "\t.data = vdso_data,\n");
	FUNC1(out_file, "\t.size = PAGE_ALIGN(%zu),\n", vdso_size);
	FUNC1(out_file, "\t.mapping = {\n");
	FUNC1(out_file, "\t\t.name = \"[vdso]\",\n");
	FUNC1(out_file, "\t\t.pages = vdso_pages,\n");
	FUNC1(out_file, "\t},\n");

	/* Calculate and write symbol offsets to <output file> */
	if (!FUNC2(dbg_vdso_path, dbg_vdso)) {
		FUNC7(out_path);
		return EXIT_FAILURE;
	}

	FUNC1(out_file, "};\n");

	return EXIT_SUCCESS;
}