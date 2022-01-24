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
struct board_info {size_t imagelen; size_t const magic; size_t const load_addr; size_t const entry; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 size_t HDR_LENGTH ; 
 int /*<<< orphan*/  HDR_OFF_CHECKSUM ; 
 int /*<<< orphan*/  HDR_OFF_ENTRY ; 
 int /*<<< orphan*/  HDR_OFF_FILLER0 ; 
 int /*<<< orphan*/  HDR_OFF_FILLER1 ; 
 int /*<<< orphan*/  HDR_OFF_FILLER2 ; 
 int /*<<< orphan*/  HDR_OFF_IMAGELEN ; 
 int /*<<< orphan*/  HDR_OFF_LOAD_ADDR ; 
 int /*<<< orphan*/  HDR_OFF_MAGIC1 ; 
 int /*<<< orphan*/  PADDING_BYTE ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t const,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 size_t FUNC5 (unsigned char*,size_t,int,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ strip_padding ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static int FUNC9(const struct board_info *board, const size_t klen,
			    FILE *out, FILE *in)
{
	unsigned char *kernel;
	unsigned char *buf;
	size_t buflen;
	size_t kspace;

	size_t rc;
	buflen = board->imagelen;
	kspace = buflen - HDR_LENGTH;

	if (klen > kspace) {
		FUNC0("kernel file is too big - max size: 0x%08lX\n", kspace);
		return EXIT_FAILURE;
	}

	/* If requested, resize buffer to remove padding */
	if (strip_padding)
		buflen = klen + HDR_LENGTH;

	/* Allocate and initialize buffer for final image */
	buf = FUNC6(buflen);
	if (buf == NULL) {
		FUNC1("no memory for buffer: %s\n");
		return EXIT_FAILURE;
	}
	FUNC7(buf, PADDING_BYTE, buflen);

	/* Load kernel */
	kernel = buf + HDR_LENGTH;
	FUNC3(kernel, klen, 1, in);

	/* Write magic values and filler */
	FUNC8(buf, HDR_OFF_MAGIC1, board->magic);
	FUNC8(buf, HDR_OFF_FILLER0, 0);
	FUNC8(buf, HDR_OFF_FILLER1, 0);
	FUNC8(buf, HDR_OFF_FILLER2, 0);

	/* Write load and kernel entry point address */
	FUNC8(buf, HDR_OFF_LOAD_ADDR, board->load_addr);
	FUNC8(buf, HDR_OFF_ENTRY, board->entry);

	/* Write header and image length */
	FUNC8(buf, HDR_OFF_IMAGELEN, klen);

	/* this gets replaced later, after the checksum has been calculated */
	FUNC8(buf, HDR_OFF_CHECKSUM, 0);

	/* Write checksum */
	FUNC2(buf, klen + HDR_LENGTH);

	rc = FUNC5(buf, buflen, 1, out);

	FUNC4(buf);

	return rc == 1 ? EXIT_SUCCESS : EXIT_FAILURE;
}