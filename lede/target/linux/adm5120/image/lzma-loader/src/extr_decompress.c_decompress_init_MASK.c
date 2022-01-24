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
struct trx_header {int /*<<< orphan*/  len; int /*<<< orphan*/ * offsets; } ;

/* Variables and functions */
 size_t FLASH_BANK_SIZE ; 
 scalar_t__ TRX_ALIGN ; 
 unsigned long TRX_MAGIC ; 
 int /*<<< orphan*/ * flash_base ; 
 size_t flash_max ; 
 size_t flash_ofs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct trx_header *hdr = NULL;
	unsigned long kofs,klen;

    	FUNC1("Looking for TRX header... ");
	/* look for trx header, 32-bit data access */
	for (flash_ofs = 0; flash_ofs < FLASH_BANK_SIZE; flash_ofs += TRX_ALIGN) {
		if (FUNC2(&flash_base[flash_ofs]) == TRX_MAGIC) {
			hdr = (struct trx_header *)&flash_base[flash_ofs];
			break;
		}
	}

	if (hdr == NULL) {
		FUNC1("not found!\n");
		/* no compressed kernel found, halting */
		FUNC0();
	}

	/* compressed kernel is in the partition 0 or 1 */
	kofs = FUNC2(&hdr->offsets[1]);
	if (kofs == 0 || kofs > 65536) {
		klen = kofs-FUNC2(&hdr->offsets[0]);
		kofs = FUNC2(&hdr->offsets[0]);
	} else {
		klen = FUNC2(&hdr->offsets[2]);
		if (klen > kofs)
			klen -= kofs;
		else
			klen = FUNC2(&hdr->len)-kofs;
	}

	FUNC1("found at %08X, kernel:%08X len:%08X\n", flash_ofs,
		kofs, klen);

	flash_ofs += kofs;
	flash_max = flash_ofs+klen;
}