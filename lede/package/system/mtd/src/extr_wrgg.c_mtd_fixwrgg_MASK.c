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
struct wrgg03_header {int magic1; int /*<<< orphan*/  size; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WRGG03_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int erasesize ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int,size_t) ; 
 size_t mtdsize ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int,char*,int,size_t) ; 
 int FUNC11 (int,char*,int,size_t) ; 
 int quiet ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (struct wrgg03_header*,int,size_t,size_t) ; 

int
FUNC15(const char *mtd, size_t offset, size_t data_size)
{
	int fd;
	char *first_block;
	ssize_t res;
	size_t block_offset;
	size_t data_offset;
	struct wrgg03_header *shdr;

	if (quiet < 2)
		FUNC3(stderr, "Trying to fix WRGG header in %s at 0x%zx...\n",
			mtd, offset);

	block_offset = offset & ~(erasesize - 1);
	offset -= block_offset;

	fd = FUNC6(mtd);
	if(fd < 0) {
		FUNC3(stderr, "Could not open mtd device: %s\n", mtd);
		FUNC2(1);
	}

	if (block_offset + erasesize > mtdsize) {
		FUNC3(stderr, "Offset too large, device size 0x%zx\n",
			mtdsize);
		FUNC2(1);
	}

	first_block = FUNC5(erasesize);
	if (!first_block) {
		FUNC9("malloc");
		FUNC2(1);
	}

	res = FUNC10(fd, first_block, erasesize, block_offset);
	if (res != erasesize) {
		FUNC9("pread");
		FUNC2(1);
	}

	shdr = (struct wrgg03_header *)(first_block + offset);
	if (shdr->magic1 != FUNC4(FUNC0(WRGG03_MAGIC))) {
		FUNC3(stderr, "magic1 %x\n", shdr->magic1);
		FUNC3(stderr, "htonl(WRGG03_MAGIC) %x\n", WRGG03_MAGIC);
		FUNC3(stderr, "No WRGG header found\n");
		FUNC2(1);
	} else if (!FUNC8(shdr->size)) {
		FUNC3(stderr, "WRGG entity with empty image\n");
		FUNC2(1);
	}

	data_offset = offset + sizeof(struct wrgg03_header);
	if (!data_size)
		data_size = mtdsize - data_offset;
	if (data_size > FUNC8(shdr->size))
		data_size = FUNC8(shdr->size);
	if (FUNC14(shdr, fd, data_offset, data_size))
		goto out;

	if (FUNC7(fd, block_offset)) {
		FUNC3(stderr, "Can't erease block at 0x%zx (%s)\n",
			block_offset, FUNC12(errno));
		FUNC2(1);
	}

	if (quiet < 2)
		FUNC3(stderr, "Rewriting block at 0x%zx\n", block_offset);

	if (FUNC11(fd, first_block, erasesize, block_offset) != erasesize) {
		FUNC3(stderr, "Error writing block (%s)\n", FUNC12(errno));
		FUNC2(1);
	}

	if (quiet < 2)
		FUNC3(stderr, "Done.\n");

out:
	FUNC1 (fd);
	FUNC13();

	return 0;
}