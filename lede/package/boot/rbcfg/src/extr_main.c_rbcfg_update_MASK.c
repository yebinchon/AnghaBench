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
typedef  int /*<<< orphan*/  uint32_t ;
struct rbcfg_ctx {int buflen; char* tmp_file; char* mtd_device; scalar_t__ buf; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_WRONLY ; 
 int RB_ERR_IO ; 
 int /*<<< orphan*/  RB_MAGIC_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct rbcfg_ctx* rbcfg_ctx ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (int,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC7(int tmp)
{
	struct rbcfg_ctx *ctx = rbcfg_ctx;
	char *name;
	uint32_t crc;
	int fd;
	int err;

	FUNC5(ctx->buf, RB_MAGIC_SOFT);
	FUNC5(ctx->buf + 4, 0);
	crc = FUNC1((unsigned char *) ctx->buf, ctx->buflen);
	FUNC5(ctx->buf + 4, crc);

	name = (tmp) ? ctx->tmp_file : ctx->mtd_device;
	fd = FUNC4(name, O_WRONLY | O_CREAT);
	if (fd < 0) {
		FUNC2(stderr, "unable to open %s for writing\n", name);
		err = RB_ERR_IO;
		goto out;
	}

	err = FUNC6(fd, ctx->buf, ctx->buflen);
	if (err != ctx->buflen) {
		err = RB_ERR_IO;
		goto out_close;
	}

	FUNC3(fd);
	err = 0;

 out_close:
	FUNC0(fd);
 out:
	return err;
}