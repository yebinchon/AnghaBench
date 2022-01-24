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
struct stat {unsigned int st_size; } ;
typedef  int off_t ;

/* Variables and functions */
 unsigned int AOUT_TEXT_OFFSET ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int*,unsigned int*) ; 
 int is64bit ; 
 scalar_t__ FUNC7 (int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 unsigned int FUNC15 (int,char*,unsigned int) ; 

int FUNC16(int argc,char **argv)
{
	static char aout_magic[] = { 0x01, 0x03, 0x01, 0x07 };
	char buffer[1024];
	unsigned int i, start, end;
	off_t offset;
	struct stat s;
	int image, tail;

	if (argc != 5)
		FUNC14();
	if (FUNC13(argv[1], "64") == 0)
		is64bit = 1;
	if (FUNC12 (argv[4], &s) < 0)
		FUNC2(argv[4]);

	if (!FUNC6(argv[3], &start, &end)) {
		FUNC4(stderr, "Could not determine start and end from %s\n",
		        argv[3]);
		FUNC3(1);
	}
	if ((image = FUNC9(argv[2], O_RDWR)) < 0)
		FUNC2(argv[2]);
	if (FUNC10(image, buffer, 512) != 512)
		FUNC2(argv[2]);
	if (FUNC8(buffer, aout_magic, 4) != 0) {
		FUNC4 (stderr, "Not a.out. Don't blame me.\n");
		FUNC3(1);
	}
	/*
	 * We need to fill in values for
	 * sparc_ramdisk_image + sparc_ramdisk_size
	 * To locate these symbols search for the "HdrS" text which appear
	 * in the image a little before the gokernel symbol.
	 * See definition of these in init_32.S
	 */

	offset = FUNC5(image, argv[2]);
	/* skip HdrS + LINUX_VERSION_CODE + HdrS version */
	offset += 10;

	if (FUNC7(image, offset, 0) < 0)
		FUNC2("lseek");

	/*
	 * root_flags = 0
	 * root_dev = 1 (RAMDISK_MAJOR)
	 * ram_flags = 0
	 * sparc_ramdisk_image = "PAGE aligned address after _end")
	 * sparc_ramdisk_size = size of image
	 */
	FUNC11(buffer, 0);
	FUNC11(buffer + 4, 0x01000000);
	FUNC11(buffer + 8, FUNC0(end + 32));
	FUNC11(buffer + 12, s.st_size);

	if (FUNC15(image, buffer + 2, 14) != 14)
		FUNC2(argv[2]);

	/* For sparc64 update a_text and clear a_data + a_bss */
	if (is64bit)
	{
		if (FUNC7(image, 4, 0) < 0)
			FUNC2("lseek");
		/* a_text */
		FUNC11(buffer, FUNC0(end + 32 + 8191) - (start & ~0x3fffffUL) +
		            s.st_size);
		/* a_data */
		FUNC11(buffer + 4, 0);
		/* a_bss */
		FUNC11(buffer + 8, 0);
		if (FUNC15(image, buffer, 12) != 12)
			FUNC2(argv[2]);
	}

	/* seek page aligned boundary in the image file and add boot image */
	if (FUNC7(image, AOUT_TEXT_OFFSET - start + FUNC0(end + 32), 0) < 0)
		FUNC2("lseek");
	if ((tail = FUNC9(argv[4], O_RDONLY)) < 0)
		FUNC2(argv[4]);
	while ((i = FUNC10(tail, buffer, 1024)) > 0)
		if (FUNC15(image, buffer, i) != i)
			FUNC2(argv[2]);
	if (FUNC1(image) < 0)
		FUNC2("close");
	if (FUNC1(tail) < 0)
		FUNC2("close");
	return 0;
}