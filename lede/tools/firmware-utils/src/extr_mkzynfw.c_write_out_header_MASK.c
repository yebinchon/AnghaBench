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
typedef  int /*<<< orphan*/  t ;
struct zyn_rombin_hdr {void* mmap_addr; void* ccsum; void* ocsum; void* flags; void* csize; void* osize; void* type; void* addr; int /*<<< orphan*/  sig; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  ROMBIN_SIGNATURE ; 
 int /*<<< orphan*/  ROMBIN_SIG_LEN ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zyn_rombin_hdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int
FUNC8(FILE *outfile, struct zyn_rombin_hdr *hdr)
{
	struct zyn_rombin_hdr t;

	errno = 0;
	if (FUNC4(outfile, 0, SEEK_SET) != 0) {
		FUNC1("fseek failed on output file");
		return -1;
	}

	/* setup temporary header fields */
	FUNC6(&t, 0, sizeof(t));
	t.addr = FUNC3(hdr->addr);
	FUNC5(&t.sig, ROMBIN_SIGNATURE, ROMBIN_SIG_LEN);
	t.type = hdr->type;
	t.flags = hdr->flags;
	t.osize = FUNC3(hdr->osize);
	t.csize = FUNC3(hdr->csize);
	t.ocsum = FUNC2(hdr->ocsum);
	t.ccsum = FUNC2(hdr->ccsum);
	t.mmap_addr = FUNC3(hdr->mmap_addr);

	FUNC0(2, "hdr.addr      = 0x%08x", hdr->addr);
	FUNC0(2, "hdr.type      = 0x%02x", hdr->type);
	FUNC0(2, "hdr.osize     = 0x%08x", hdr->osize);
	FUNC0(2, "hdr.csize     = 0x%08x", hdr->csize);
	FUNC0(2, "hdr.flags     = 0x%02x", hdr->flags);
	FUNC0(2, "hdr.ocsum     = 0x%04x", hdr->ocsum);
	FUNC0(2, "hdr.ccsum     = 0x%04x", hdr->ccsum);
	FUNC0(2, "hdr.mmap_addr = 0x%08x", hdr->mmap_addr);

	return FUNC7(outfile, (uint8_t *)&t, sizeof(t), NULL);
}