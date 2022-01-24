#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  _bgzf_file_t ;
struct TYPE_6__ {int block_length; int /*<<< orphan*/  block_address; scalar_t__ block_offset; int /*<<< orphan*/  errcode; scalar_t__ fp; scalar_t__ compressed_block; } ;
typedef  TYPE_1__ BGZF ;

/* Variables and functions */
 int /*<<< orphan*/  BGZF_ERR_HEADER ; 
 int /*<<< orphan*/  BGZF_ERR_IO ; 
 int BLOCK_HEADER_LENGTH ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(BGZF *fp)
{
	uint8_t header[BLOCK_HEADER_LENGTH], *compressed_block;
	int count, size = 0, block_length, remaining;
	int64_t block_address;
	block_address = FUNC1((_bgzf_file_t)fp->fp);
	if (FUNC5(fp, block_address)) return 0;
	count = FUNC0(fp->fp, header, sizeof(header));
	if (count == 0) { // no data read
		fp->block_length = 0;
		return 0;
	}
	if (count != sizeof(header) || !FUNC3(header)) {
		fp->errcode |= BGZF_ERR_HEADER;
		return -1;
	}
	size = count;
	block_length = FUNC7((uint8_t*)&header[16]) + 1; // +1 because when writing this number, we used "-1"
	compressed_block = (uint8_t*)fp->compressed_block;
	FUNC6(compressed_block, header, BLOCK_HEADER_LENGTH);
	remaining = block_length - BLOCK_HEADER_LENGTH;
	count = FUNC0(fp->fp, &compressed_block[BLOCK_HEADER_LENGTH], remaining);
	if (count != remaining) {
		fp->errcode |= BGZF_ERR_IO;
		return -1;
	}
	size += count;
	if ((count = FUNC4(fp, block_length)) < 0) return -1;
	if (fp->block_length != 0) fp->block_offset = 0; // Do not reset offset if this read follows a seek.
	fp->block_address = block_address;
	fp->block_length = count;
	FUNC2(fp, size);
	return 0;
}