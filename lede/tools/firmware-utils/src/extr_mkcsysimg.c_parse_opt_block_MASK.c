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
struct csys_header {int dummy; } ;
struct csys_block {int need_file; int padc; int size_hdr; int addr_set; int align_set; int /*<<< orphan*/  align; int /*<<< orphan*/  addr; int /*<<< orphan*/ * file_name; int /*<<< orphan*/  type; int /*<<< orphan*/  size_csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_TYPE_BOOT ; 
 int /*<<< orphan*/  BLOCK_TYPE_CODE ; 
 int /*<<< orphan*/  BLOCK_TYPE_CONF ; 
 int /*<<< orphan*/  BLOCK_TYPE_WEBP ; 
 int /*<<< orphan*/  BLOCK_TYPE_XTRA ; 
 int /*<<< orphan*/  CSUM_SIZE_16 ; 
 int /*<<< orphan*/  CSUM_SIZE_8 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ERR_FATAL ; 
 int MAX_ARG_COUNT ; 
 int MAX_ARG_LEN ; 
 size_t MAX_NUM_BLOCKS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct csys_block* blocks ; 
 struct csys_block* boot_block ; 
 struct csys_block* code_block ; 
 struct csys_block* conf_block ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t num_blocks ; 
 int FUNC3 (char*,char*,char**) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 struct csys_block* webp_block ; 

int
FUNC7(char ch, char *arg)
{
	char buf[MAX_ARG_LEN];
	char *argv[MAX_ARG_COUNT];
	int argc;
	char *p;
	struct csys_block *block;
	int i;

	if ( num_blocks > MAX_NUM_BLOCKS ) {
		FUNC0("too many blocks specified");
		return ERR_FATAL;
	}

	block = &blocks[num_blocks];

	/* setup default field values */
	block->need_file = 1;
	block->padc = 0xFF;

	switch (ch) {
	case 'b':
		if (boot_block) {
			FUNC1("only one boot block allowed");
			break;
		}
		block->type = BLOCK_TYPE_BOOT;
		boot_block = block;
		break;
	case 'c':
		if (conf_block) {
			FUNC1("only one config block allowed");
			break;
		}
		block->type = BLOCK_TYPE_CONF;
		conf_block = block;
		break;
	case 'w':
		if (webp_block) {
			FUNC1("only one web block allowed");
			break;
		}
		block->type = BLOCK_TYPE_WEBP;
		block->size_hdr = sizeof(struct csys_header);
		block->size_csum = CSUM_SIZE_8;
		block->need_file = 0;
		webp_block = block;
		break;
	case 'r':
		if (code_block) {
			FUNC1("only one runtime block allowed");
			break;
		}
		block->type = BLOCK_TYPE_CODE;
		block->size_hdr = sizeof(struct csys_header);
		block->size_csum = CSUM_SIZE_16;
		code_block = block;
		break;
	case 'x':
		block->type = BLOCK_TYPE_XTRA;
		break;
	default:
		FUNC0("unknown block type \"%c\"", ch);
		return ERR_FATAL;
	}

	argc = FUNC3(arg, buf, argv);

	i = 0;
	p = argv[i++];
	if (!FUNC2(p)) {
		block->file_name = FUNC6(p);
		if (block->file_name == NULL) {
			FUNC0("not enough memory");
			return ERR_FATAL;
		}
	} else if (block->need_file){
		FUNC0("no file specified in %s", arg);
		return ERR_FATAL;
	}

	if (block->size_hdr) {
		p = argv[i++];
		if (!FUNC2(p)) {
			if (FUNC4(p, &block->addr) != 0) {
				FUNC0("invalid start address in %s", arg);
				return ERR_FATAL;
			}
			block->addr_set = 1;
		}
	}

	p = argv[i++];
	if (!FUNC2(p)) {
		if (FUNC4(p, &block->align) != 0) {
			FUNC0("invalid alignment value in %s", arg);
			return ERR_FATAL;
		}
		block->align_set = 1;
	}

	p = argv[i++];
	if (!FUNC2(p) && (FUNC5(p, &block->padc) != 0)) {
		FUNC0("invalid paddig character in %s", arg);
		return ERR_FATAL;
	}

	num_blocks++;

	return 0;
}