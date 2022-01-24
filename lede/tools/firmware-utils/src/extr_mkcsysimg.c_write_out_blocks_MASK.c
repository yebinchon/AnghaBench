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
struct csys_block {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ BLOCK_TYPE_XTRA ; 
 int FUNC0 (int /*<<< orphan*/ *,struct csys_block*) ; 
 struct csys_block* blocks ; 
 struct csys_block* boot_block ; 
 struct csys_block* code_block ; 
 struct csys_block* conf_block ; 
 int num_blocks ; 
 struct csys_block* webp_block ; 

int
FUNC1(FILE *outfile)
{
	struct csys_block *block;
	int i, res;

	res = FUNC0(outfile, boot_block);
	if (res)
		return res;

	res = FUNC0(outfile, conf_block);
	if (res)
		return res;

	res = FUNC0(outfile, webp_block);
	if (res)
		return res;

	res = FUNC0(outfile, code_block);
	if (res)
		return res;

	res = 0;
	for (i=0; i < num_blocks; i++) {
		block = &blocks[i];

		if (block->type != BLOCK_TYPE_XTRA)
			continue;

		res = FUNC0(outfile, block);
		if (res)
			break;
	}

	return res;
}