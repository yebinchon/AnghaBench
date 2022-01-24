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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* trx_path ; 

__attribute__((used)) static int FUNC9(FILE *trx, size_t offset, size_t length, char *out_path) {
	FILE *out;
	size_t bytes;
	uint8_t *buf;
	int err = 0;

	out = FUNC1(out_path, "w");
	if (!out) {
		FUNC2(stderr, "Couldn't open %s\n", out_path);
		err = -EACCES;
		goto out;
	}

	buf = FUNC7(length);
	if (!buf) {
		FUNC2(stderr, "Couldn't alloc %zu B buffer\n", length);
		err =  -ENOMEM;
		goto err_close;
	}

	FUNC5(trx, offset, SEEK_SET);
	bytes = FUNC3(buf, 1, length, trx);
	if (bytes != length) {
		FUNC2(stderr, "Couldn't read %zu B of data from %s\n", length, trx_path);
		err =  -ENOMEM;
		goto err_free_buf;
	};

	bytes = FUNC6(buf, 1, length, out);
	if (bytes != length) {
		FUNC2(stderr, "Couldn't write %zu B to %s\n", length, out_path);
		err =  -ENOMEM;
		goto err_free_buf;
	}

	FUNC8("Extracted 0x%zx bytes into %s\n", length, out_path);

err_free_buf:
	FUNC4(buf);
err_close:
	FUNC0(out);
out:
	return err;
}