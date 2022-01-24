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
struct safeloader_header {int dummy; } ;
typedef  struct safeloader_header uint8_t ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (struct safeloader_header*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct safeloader_header*,int,size_t,int /*<<< orphan*/ *) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int FUNC8 (int,int) ; 
 char* out_path ; 
 char* partition_name ; 
 char* safeloader_path ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(int argc, char **argv) {
	FILE *safeloader;
	FILE *out;
	struct safeloader_header hdr;
	size_t bytes;
	char name[32];
	int base, size;
	int err = 0;

	if (argc < 3) {
		FUNC2(stderr, "No SafeLoader file passed\n");
		err = -EINVAL;
		goto out;
	}
	safeloader_path = argv[2];

	optind = 3;
	FUNC7(argc, argv);
	if (!partition_name) {
		FUNC2(stderr, "No partition name specified\n");
		err = -EINVAL;
		goto out;
	} else if (!out_path) {
		FUNC2(stderr, "No output file specified\n");
		err = -EINVAL;
		goto out;
	}

	safeloader = FUNC1(safeloader_path, "r");
	if (!safeloader) {
		FUNC2(stderr, "Couldn't open %s\n", safeloader_path);
		err = -EACCES;
		goto out;
	}

	out = FUNC1(out_path, "w");
	if (!out) {
		FUNC2(stderr, "Couldn't open %s\n", out_path);
		err = -EACCES;
		goto err_close_safeloader;
	}

	bytes = FUNC3(&hdr, 1, sizeof(hdr), safeloader);
	if (bytes != sizeof(hdr)) {
		FUNC2(stderr, "Couldn't read %s header\n", safeloader_path);
		err =  -EIO;
		goto err_close_out;
	}

	/* Skip vendor info */
	FUNC5(safeloader, 0x1000, SEEK_CUR);

	err = -ENOENT;
	while (FUNC4(safeloader, "fwup-ptn %s base 0x%x size 0x%x\t\r\n", name, &base, &size) == 3) {
		uint8_t buf[1024];

		if (FUNC9(name, partition_name))
			continue;

		err = 0;

		FUNC5(safeloader, sizeof(hdr) + 0x1000 + base, SEEK_SET);

		while ((bytes = FUNC3(buf, 1, FUNC8(sizeof(buf), size), safeloader)) > 0) {
			if (FUNC6(buf, 1, bytes, out) != bytes) {
				FUNC2(stderr, "Couldn't write %zu B to %s\n", bytes, out_path);
				err = -EIO;
				break;
			}
			size -= bytes;
		}

		if (size) {
			FUNC2(stderr, "Couldn't extract whole partition %s from %s (%d B left)\n", partition_name, safeloader_path, size);
			err = -EIO;
		}

		break;
	}

err_close_out:
	FUNC0(out);
err_close_safeloader:
	FUNC0(safeloader);
out:
	return err;
}