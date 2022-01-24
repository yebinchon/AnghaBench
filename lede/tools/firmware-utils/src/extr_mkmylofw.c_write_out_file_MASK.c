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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct mylo_partition_header {void* len; void* crc; } ;
struct fw_block {int flags; size_t crc; size_t size; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  ph ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int BLOCK_FLAG_HAVEHDR ; 
 int FILE_BUF_LEN ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct fw_block*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *) ; 

int
FUNC10(FILE *outfile, struct fw_block *block, uint32_t *crc)
{
	char buff[FILE_BUF_LEN];
	size_t  buflen = sizeof(buff);
	FILE *f;
	size_t len;

	errno = 0;

	if (block->name == NULL) {
		return 0;
	}

	if ((block->flags & BLOCK_FLAG_HAVEHDR) != 0) {
		struct mylo_partition_header ph;

		if (FUNC7(block) != 0)
		        return -1;

		ph.crc = FUNC1(block->crc);
		ph.len = FUNC1(block->size);

		if (FUNC8(outfile, (uint8_t *)&ph, sizeof(ph), crc) != 0)
			return -1;
	}

	f = FUNC5(block->name,"r");
	if (errno) {
		FUNC3(1,"unable to open file: %s", block->name);
		return -1;
	}

	len = block->size;
	while (len > 0) {
		if (len < buflen)
			buflen = len;

		/* read data from source file */
		errno = 0;
		FUNC6(buff, buflen, 1, f);
		if (errno != 0) {
			FUNC3(1,"unable to read from file: %s",block->name);
			return -1;
		}

		if (FUNC8(outfile, buff, buflen, crc) != 0)
			return -1;

		len -= buflen;
	}

	FUNC4(f);

	/* align next block on a 4 byte boundary */
	len = FUNC0(len,4) - block->size;
	if (FUNC9(outfile, len, 0xFF, crc))
		return -1;

	FUNC2(1,"file %s written out", block->name);
	return 0;
}