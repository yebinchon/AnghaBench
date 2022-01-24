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
typedef  scalar_t__ uint32_t ;
struct rbcfg_ctx {char* tmp_file; char* mtd_device; int buflen; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int RB_ERR_INVALID ; 
 int RB_ERR_IO ; 
 scalar_t__ RB_MAGIC_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rbcfg_ctx*) ; 
 int FUNC7 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC8(struct rbcfg_ctx *ctx)
{
	uint32_t magic;
	uint32_t crc_orig, crc;
	char *name;
	int tmp;
	int fd;
	int err;

	tmp = FUNC6(ctx);
	name = (tmp) ? ctx->tmp_file : ctx->mtd_device;

	fd = FUNC4(name, O_RDONLY);
	if (fd < 0) {
		FUNC2(stderr, "unable to open %s\n", name);
		err = RB_ERR_IO;
		goto err;
	}

	err = FUNC7(fd, ctx->buf, ctx->buflen);
	if (err != ctx->buflen) {
		FUNC2(stderr, "unable to read from %s\n", name);
		err = RB_ERR_IO;
		goto err_close;
	}

	magic = FUNC3(ctx->buf);
	if (magic != RB_MAGIC_SOFT) {
		FUNC2(stderr, "invalid configuration\n");
		err = RB_ERR_INVALID;
		goto err_close;
	}

	crc_orig = FUNC3(ctx->buf + 4);
	FUNC5(ctx->buf + 4, 0);
	crc = FUNC1((unsigned char *) ctx->buf, ctx->buflen);
	if (crc != crc_orig) {
		FUNC2(stderr, "configuration has CRC error\n");
		err = RB_ERR_INVALID;
		goto err_close;
	}

	err = 0;

 err_close:
	FUNC0(fd);
 err:
	return err;
}