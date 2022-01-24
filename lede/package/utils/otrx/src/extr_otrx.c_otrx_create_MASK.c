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
struct trx_header {size_t* offset; size_t length; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 size_t TRX_MAX_PARTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct trx_header*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* trx_path ; 

__attribute__((used)) static int FUNC10(int argc, char **argv) {
	FILE *trx;
	struct trx_header hdr = {};
	ssize_t sbytes;
	size_t curr_idx = 0;
	size_t curr_offset = sizeof(hdr);
	int c;
	int err = 0;

	if (argc < 3) {
		FUNC2(stderr, "No TRX file passed\n");
		err = -EINVAL;
		goto out;
	}
	trx_path = argv[2];

	trx = FUNC1(trx_path, "w+");
	if (!trx) {
		FUNC2(stderr, "Couldn't open %s\n", trx_path);
		err = -EACCES;
		goto out;
	}
	FUNC3(trx, curr_offset, SEEK_SET);

	optind = 3;
	while ((c = FUNC4(argc, argv, "f:A:a:b:")) != -1) {
		switch (c) {
		case 'f':
			if (curr_idx >= TRX_MAX_PARTS) {
				err = -ENOSPC;
				FUNC2(stderr, "Reached TRX partitions limit, no place for %s\n", optarg);
				goto err_close;
			}

			sbytes = FUNC6(trx, optarg);
			if (sbytes < 0) {
				FUNC2(stderr, "Failed to append file %s\n", optarg);
			} else {
				hdr.offset[curr_idx++] = curr_offset;
				curr_offset += sbytes;
			}

			sbytes = FUNC5(trx, curr_offset, 4);
			if (sbytes < 0)
				FUNC2(stderr, "Failed to append zeros\n");
			else
				curr_offset += sbytes;

			break;
		case 'A':
			sbytes = FUNC6(trx, optarg);
			if (sbytes < 0) {
				FUNC2(stderr, "Failed to append file %s\n", optarg);
			} else {
				curr_offset += sbytes;
			}

			sbytes = FUNC5(trx, curr_offset, 4);
			if (sbytes < 0)
				FUNC2(stderr, "Failed to append zeros\n");
			else
				curr_offset += sbytes;
			break;
		case 'a':
			sbytes = FUNC5(trx, curr_offset, FUNC9(optarg, NULL, 0));
			if (sbytes < 0)
				FUNC2(stderr, "Failed to append zeros\n");
			else
				curr_offset += sbytes;
			break;
		case 'b':
			sbytes = FUNC9(optarg, NULL, 0) - curr_offset;
			if (sbytes < 0) {
				FUNC2(stderr, "Current TRX length is 0x%zx, can't pad it with zeros to 0x%lx\n", curr_offset, FUNC9(optarg, NULL, 0));
			} else {
				sbytes = FUNC7(trx, sbytes);
				if (sbytes < 0)
					FUNC2(stderr, "Failed to append zeros\n");
				else
					curr_offset += sbytes;
			}
			break;
		}
		if (err)
			break;
	}

	sbytes = FUNC5(trx, curr_offset, 0x1000);
	if (sbytes < 0)
		FUNC2(stderr, "Failed to append zeros\n");
	else
		curr_offset += sbytes;

	hdr.length = curr_offset;
	FUNC8(trx, &hdr);
err_close:
	FUNC0(trx);
out:
	return err;
}