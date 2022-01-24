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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  MD5_CTX ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 size_t FUNC6 (char**,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const char *filename, uint8_t *dst)
{
	FILE *fp_src;
	MD5_CTX ctx;
	char buf[BUF_SIZE];
	size_t bytes_read;

	FUNC1(&ctx);

	fp_src = FUNC5(filename, "r+b");
	if (!fp_src) {
		return -1;
	}
	while (!FUNC4(fp_src)) {
		bytes_read = FUNC6(&buf, 1, BUF_SIZE, fp_src);
		FUNC2(&ctx, &buf, bytes_read);
	}
	FUNC3(fp_src);

	FUNC0(dst, &ctx);

	return 0;
}