#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char open_mode; struct TYPE_8__* compressed_block; struct TYPE_8__* uncompressed_block; int /*<<< orphan*/  fp; int /*<<< orphan*/  errcode; } ;
typedef  TYPE_1__ BGZF ;

/* Variables and functions */
 int /*<<< orphan*/  BGZF_ERR_IO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 

int FUNC8(BGZF* fp)
{
	int ret, count, block_length;
	if (fp == 0) return -1;
	if (fp->open_mode == 'w') {
		if (FUNC1(fp) != 0) return -1;
		block_length = FUNC2(fp, 0); // write an empty block
		count = FUNC7(fp->compressed_block, 1, block_length, fp->fp);
		if (FUNC4(fp->fp) != 0) {
			fp->errcode |= BGZF_ERR_IO;
			return -1;
		}
	}
	ret = fp->open_mode == 'w'? FUNC3(fp->fp) : FUNC0(fp->fp);
	if (ret != 0) return -1;
	FUNC5(fp->uncompressed_block);
	FUNC5(fp->compressed_block);
	FUNC6(fp);
	FUNC5(fp);
	return 0;
}