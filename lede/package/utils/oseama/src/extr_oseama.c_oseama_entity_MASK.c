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
struct seama_entity_header {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 size_t FUNC6 (int /*<<< orphan*/ *,size_t,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,size_t) ; 
 char* seama_path ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(int argc, char **argv) {
	FILE *seama;
	ssize_t sbytes;
	size_t curr_offset = sizeof(struct seama_entity_header);
	size_t metasize = 0, imagesize = 0;
	int c;
	int err = 0;

	if (argc < 3) {
		FUNC2(stderr, "No Seama file passed\n");
		err = -EINVAL;
		goto out;
	}
	seama_path = argv[2];

	seama = FUNC1(seama_path, "w+");
	if (!seama) {
		FUNC2(stderr, "Couldn't open %s\n", seama_path);
		err = -EACCES;
		goto out;
	}
	FUNC3(seama, curr_offset, SEEK_SET);

	optind = 3;
	while ((c = FUNC5(argc, argv, "m:f:b:")) != -1) {
		switch (c) {
		case 'm':
			sbytes = FUNC4(optarg, 1, FUNC10(optarg) + 1, seama);
			if (sbytes < 0) {
				FUNC2(stderr, "Failed to write meta %s\n", optarg);
			} else {
				curr_offset += sbytes;
				metasize += sbytes;
			}

			sbytes = FUNC6(seama, curr_offset, 4);
			if (sbytes < 0) {
				FUNC2(stderr, "Failed to append zeros\n");
			} else {
				curr_offset += sbytes;
				metasize += sbytes;
			}

			break;
		case 'f':
		case 'b':
			break;
		}
	}

	optind = 3;
	while ((c = FUNC5(argc, argv, "m:f:b:")) != -1) {
		switch (c) {
		case 'm':
			break;
		case 'f':
			sbytes = FUNC7(seama, optarg);
			if (sbytes < 0) {
				FUNC2(stderr, "Failed to append file %s\n", optarg);
			} else {
				curr_offset += sbytes;
				imagesize += sbytes;
			}
			break;
		case 'b':
			sbytes = FUNC11(optarg, NULL, 0) - curr_offset;
			if (sbytes < 0) {
				FUNC2(stderr, "Current Seama entity length is 0x%zx, can't pad it with zeros to 0x%lx\n", curr_offset, FUNC11(optarg, NULL, 0));
			} else {
				sbytes = FUNC8(seama, sbytes);
				if (sbytes < 0) {
					FUNC2(stderr, "Failed to append zeros\n");
				} else {
					curr_offset += sbytes;
					imagesize += sbytes;
				}
			}
			break;
		}
		if (err)
			break;
	}

	FUNC9(seama, metasize, imagesize);

	FUNC0(seama);
out:
	return err;
}