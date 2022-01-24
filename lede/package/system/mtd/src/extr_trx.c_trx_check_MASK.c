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
struct trx_header {scalar_t__ magic; int len; } ;

/* Variables and functions */
 scalar_t__ TRX_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (char const*) ; 
 int mtdsize ; 
 int quiet ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

int
FUNC6(int imagefd, const char *mtd, char *buf, int *len)
{
	const struct trx_header *trx = (const struct trx_header *) buf;
	int fd;

	if (FUNC5(mtd, "firmware") != 0)
		return 1;

	if (*len < 32) {
		*len += FUNC4(imagefd, buf + *len, 32 - *len);
		if (*len < 32) {
			FUNC2(stdout, "Could not get image header, file too small (%d bytes)\n", *len);
			return 0;
		}
	}

	if (trx->magic != TRX_MAGIC || trx->len < sizeof(struct trx_header)) {
		if (quiet < 2) {
			FUNC2(stderr, "Bad trx header\n");
			FUNC2(stderr, "This is not the correct file format; refusing to flash.\n"
					"Please specify the correct file or use -f to force.\n");
		}
		return 0;
	}

	/* check if image fits to mtd device */
	fd = FUNC3(mtd);
	if(fd < 0) {
		FUNC2(stderr, "Could not open mtd device: %s\n", mtd);
		FUNC1(1);
	}

	if(mtdsize < trx->len) {
		FUNC2(stderr, "Image too big for partition: %s\n", mtd);
		FUNC0(fd);
		return 0;
	}

	FUNC0(fd);
	return 1;
}