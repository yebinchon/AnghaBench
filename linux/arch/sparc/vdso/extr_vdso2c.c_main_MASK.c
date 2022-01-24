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
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,void*,size_t,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 char* outfilename ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 

int FUNC12(int argc, char **argv)
{
	size_t raw_len, stripped_len;
	void *raw_addr, *stripped_addr;
	FILE *outfile;
	char *name, *tmp;
	int namelen;

	if (argc != 4) {
		FUNC6("Usage: vdso2c RAW_INPUT STRIPPED_INPUT OUTPUT\n");
		return 1;
	}

	/*
	 * Figure out the struct name.  If we're writing to a .so file,
	 * generate raw output insted.
	 */
	name = FUNC9(argv[3]);
	namelen = FUNC10(name);
	if (namelen >= 3 && !FUNC8(name + namelen - 3, ".so")) {
		name = NULL;
	} else {
		tmp = FUNC11(name, '/');
		if (tmp)
			name = tmp + 1;
		tmp = FUNC7(name, '.');
		if (tmp)
			*tmp = '\0';
		for (tmp = name; *tmp; tmp++)
			if (*tmp == '-')
				*tmp = '_';
	}

	FUNC4(argv[1], &raw_addr, &raw_len, PROT_READ);
	FUNC4(argv[2], &stripped_addr, &stripped_len, PROT_READ);

	outfilename = argv[3];
	outfile = FUNC2(outfilename, "w");
	if (!outfile)
		FUNC0(1, "%s", argv[2]);

	FUNC3(raw_addr, raw_len, stripped_addr, stripped_len, outfile, name);

	FUNC5(raw_addr, raw_len);
	FUNC5(stripped_addr, stripped_len);
	FUNC1(outfile);

	return 0;
}