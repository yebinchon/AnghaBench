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
struct fw_block {int /*<<< orphan*/ * name; int /*<<< orphan*/  flags; int /*<<< orphan*/  blocklen; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_HAVEHDR ; 
 int MAX_ARG_COUNT ; 
 int MAX_ARG_LEN ; 
 scalar_t__ MAX_FW_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct fw_block* fw_blocks ; 
 scalar_t__ fw_num_blocks ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,char*,char**) ; 
 scalar_t__ FUNC4 (char,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 

int
FUNC7(char ch, char *arg)
{
	char buf[MAX_ARG_LEN];
	char *argv[MAX_ARG_COUNT];
	int argc;
	struct fw_block *b;
	char *p;

	if (FUNC4(ch, arg)) {
		goto err_out;
	}

	if (fw_num_blocks >= MAX_FW_BLOCKS) {
		FUNC1(0,"too many blocks specified");
		goto err_out;
	}

	argc = FUNC3(arg, buf, argv);
	FUNC0(1,"processing block option %s, count %d", arg, argc);

	b = &fw_blocks[fw_num_blocks++];

	/* processing block address */
	p = argv[0];
	if (FUNC2(p)) {
		FUNC1(0,"no block address specified in %s", arg);
		goto err_out;
	} else if (FUNC5(p, &b->addr) != 0) {
		FUNC1(0,"invalid block address: %s", p);
		goto err_out;
	}

	/* processing block length */
	p = argv[1];
	if (FUNC2(p)) {
		FUNC1(0,"no block length specified in %s", arg);
		goto err_out;
	} else if (FUNC5(p, &b->blocklen) != 0) {
		FUNC1(0,"invalid block length: %s", p);
		goto err_out;
	}

	if (argc < 3) {
		FUNC0(1,"empty block %s", arg);
		goto success;
	}

	/* processing flags */
	p = argv[2];
	if (FUNC2(p) == 0) {
		for ( ; *p != '\0'; p++) {
			switch (*p) {
			case 'h':
				b->flags |= BLOCK_FLAG_HAVEHDR;
				break;
			default:
				FUNC1(0, "invalid block flag \"%c\"", *p);
				goto err_out;
			}
		}
	}

	/* processing file name */
	p = argv[3];
	if (FUNC2(p)) {
		FUNC1(0,"file name missing in %s", arg);
		goto err_out;
	}

	b->name = FUNC6(p);
	if (b->name == NULL) {
		FUNC1(0,"not enough memory");
		goto err_out;
	}

success:

	return 0;

err_out:
	return -1;
}