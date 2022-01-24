#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct zyn_rombin_hdr {int osize; scalar_t__ ocsum; scalar_t__ mmap_addr; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  addr; } ;
struct fw_mmap {scalar_t__ addr; } ;
struct fw_block {scalar_t__ file_size; scalar_t__ type; int align; int /*<<< orphan*/  file_name; } ;
struct csum_state {int dummy; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_2__ {scalar_t__ romio_offs; scalar_t__ bootext_size; scalar_t__ flash_base; int /*<<< orphan*/  code_start; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ BLOCK_TYPE_BOOTEXT ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int MMAP_ALIGN ; 
 scalar_t__ MMAP_DATA_SIZE ; 
 int /*<<< orphan*/  OBJECT_TYPE_BOOTEXT ; 
 int /*<<< orphan*/  ROMBIN_FLAG_OCSUM ; 
 struct fw_block* blocks ; 
 TYPE_1__* board ; 
 struct fw_block* bootext_block ; 
 scalar_t__ FUNC5 (struct csum_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct csum_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct zyn_rombin_hdr*,int /*<<< orphan*/ ,int) ; 
 int num_blocks ; 
 int FUNC8 (scalar_t__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct fw_block*,struct csum_state*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct zyn_rombin_hdr*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct fw_mmap*,struct csum_state*) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,int,struct csum_state*) ; 

int
FUNC14(FILE *outfile)
{
	struct fw_block *block;
	struct fw_mmap mmap;
	struct zyn_rombin_hdr hdr;
	struct csum_state css;
	int i, res;
	uint32_t offset;
	uint32_t padlen;
	uint16_t csum;
	uint16_t t;

	/* setup header fields */
	FUNC7(&hdr, 0, sizeof(hdr));
	hdr.addr = board->code_start;
	hdr.type = OBJECT_TYPE_BOOTEXT;
	hdr.flags = ROMBIN_FLAG_OCSUM;

	offset = board->romio_offs;

	res = FUNC11(outfile, &hdr);
	if (res)
		return res;

	offset += sizeof(hdr);

	FUNC6(&css);
	res = FUNC9(outfile, bootext_block, &css);
	if (res)
		return res;

	offset += bootext_block->file_size;
	if (offset > (board->romio_offs + board->bootext_size)) {
		FUNC3("bootext file '%s' is too big", bootext_block->file_name);
		return -1;
	}

	padlen = FUNC0(offset, MMAP_ALIGN) - offset;
	res = FUNC13(outfile, padlen, 0xFF, &css);
	if (res)
		return res;

	offset += padlen;

	mmap.addr = board->flash_base + offset;
	res = FUNC12(outfile, &mmap, &css);
	if (res)
		return res;

	offset += MMAP_DATA_SIZE;

	if ((offset - board->romio_offs) < board->bootext_size) {
		padlen = board->romio_offs + board->bootext_size - offset;
		res = FUNC13(outfile, padlen, 0xFF, &css);
		if (res)
			return res;
		offset += padlen;

		FUNC2(2, "bootext end at %08x", offset);
	}

	for (i = 0; i < num_blocks; i++) {
		block = &blocks[i];

		if (block->type == BLOCK_TYPE_BOOTEXT)
			continue;

		padlen = FUNC0(offset, block->align) - offset;
		res = FUNC13(outfile, padlen, 0xFF, &css);
		if (res)
			return res;
		offset += padlen;

		res = FUNC9(outfile, block, &css);
		if (res)
			return res;
		offset += block->file_size;
	}

	padlen = FUNC0(offset, 4) - offset;
	res = FUNC13(outfile, padlen, 0xFF, &css);
	if (res)
		return res;
	offset += padlen;

	csum = FUNC5(&css);
	hdr.mmap_addr = mmap.addr;
	hdr.osize = 2;

	res = FUNC8(&hdr.ocsum);
	if (res)
		return res;
	hdr.ocsum = FUNC1(hdr.ocsum);

	if (csum <= hdr.ocsum)
		t = hdr.ocsum - csum;
	else
		t = hdr.ocsum - csum - 1;

	FUNC2(2, "ocsum=%04x, csum=%04x, fix=%04x", hdr.ocsum, csum, t);

	t = FUNC4(t);
	res = FUNC10(outfile, (uint8_t *)&t, 2, NULL);
	if (res)
		return res;


	res = FUNC11(outfile, &hdr);

	return res;
}