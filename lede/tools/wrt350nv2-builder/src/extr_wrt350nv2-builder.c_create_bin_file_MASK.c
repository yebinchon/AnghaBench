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
struct TYPE_6__ {int filesize; int size; char* filename; char* name; int offset; } ;
typedef  TYPE_1__ mtd_info ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BOOT_ADDR_BASE_OFF ; 
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  DEBUG_LVL2 ; 
 int FLASH_SIZE ; 
 int FW_VERSION_OFFSET ; 
 int KERNEL_CODE_OFFSET ; 
 int NODE_BASE_OFF ; 
 int PID_OFFSET ; 
 int PRODUCT_ID_OFFSET ; 
 int PROTOCOL_ID_OFFSET ; 
 int ROOTFS_MIN_OFFSET ; 
 int SIGN_OFFSET ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fw_version ; 
 int FUNC4 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ mtd_image ; 
 TYPE_1__ mtd_kernel ; 
 TYPE_1__ mtd_rootfs ; 
 TYPE_1__ mtd_uboot ; 
 int /*<<< orphan*/  pid ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  product_id ; 
 int /*<<< orphan*/  protocol_id ; 
 int /*<<< orphan*/  rootfs_unknown ; 
 int /*<<< orphan*/  sign ; 
 char* FUNC10 (int) ; 

int FUNC11(char *bin_filename) {
	int exitcode = 0;

	unsigned char *buffer;

	int i;
	mtd_info *mtd;
	int addsize;
	int padsize;

	char *rand_filename = "/dev/urandom";
	FILE *f_in;
	int size;

	unsigned long int csum;
	unsigned char checksum;

	FILE *f_out;

	// allocate memory for bin file
	buffer = FUNC6(KERNEL_CODE_OFFSET + FLASH_SIZE);
	if (!buffer) {
		exitcode = 1;
		FUNC9("create_bin_file: can not allocate %i bytes\n", FLASH_SIZE);
	} else {
		// initialize with zero
		FUNC8(buffer, 0, KERNEL_CODE_OFFSET + FLASH_SIZE);
	}

	// add files
	if (!exitcode) {
		for (i = 1; i <= 4; i++) {
			addsize = 0;
			padsize = 0;

			switch (i) {
				case 1:
					mtd = &mtd_image;
					padsize = ROOTFS_MIN_OFFSET - mtd->filesize;
					break;
				case 2:
					mtd = &mtd_kernel;
					break;
				case 3:
					mtd = &mtd_rootfs;
					addsize = mtd->filesize;
					padsize = ROOTFS_MIN_OFFSET - mtd_kernel.size - mtd->filesize;
					break;
				case 4:
					mtd = &mtd_uboot;
					addsize = mtd->filesize;
					break;
				default:
					mtd = NULL;
					exitcode = 1;
					FUNC9("create_bin_file: unknown mtd %i\n", i);
					break;
			}
			if (!mtd) {
				break;
			}
			if (!mtd->filename) {
				continue;
			}

			FUNC5(DEBUG, "adding mtd %s file %s\n", mtd->name, mtd->filename);

			// adding file size
			if (addsize) {
				buffer[KERNEL_CODE_OFFSET + mtd->offset - 16] = 0x000000FFL & ( addsize >> 24 );
				buffer[KERNEL_CODE_OFFSET + mtd->offset - 15] = 0x000000FFL & ( addsize >> 16 );
				buffer[KERNEL_CODE_OFFSET + mtd->offset - 14] = 0x000000FFL & ( addsize >> 8  );
				buffer[KERNEL_CODE_OFFSET + mtd->offset - 13] = 0x000000FFL &   addsize;
			}

			// adding file content
			f_in = FUNC2(mtd->filename, "rb");
			if (!f_in) {
				exitcode = errno;
				FUNC9("input file %s: %s\n", mtd->filename, FUNC10(exitcode));
			} else {
				size = FUNC3(&buffer[KERNEL_CODE_OFFSET + mtd->offset], mtd->filesize, 1, f_in);
				if (size < 1) {
					if (FUNC1(f_in)) {
						exitcode = FUNC1(f_in);
						FUNC9("input file %s: %s\n", mtd->filename, FUNC10(exitcode));
					} else {
						exitcode = 1;
						FUNC9("input file %s: smaller than before *doh*\n", mtd->filename);
					}
				}
				FUNC0(f_in);
			}

			// padding
			if (padsize > 0) {
				addsize = padsize & 0x0000FFFF;	// start on next 64KB border
				padsize -= addsize;
			}
			if (padsize > 0) {
				FUNC9("mtd %s input file %s is too small (0x%08lX), adding 0x%08X random bytes\n", mtd->name, mtd->filename, mtd->filesize, padsize);

				addsize += KERNEL_CODE_OFFSET + mtd->offset + mtd->filesize;	// get offset
				FUNC5(DEBUG, " padding offset 0x%08X length 0x%08X\n", addsize, padsize);

				f_in = FUNC2(rand_filename, "rb");
				if (!f_in) {
					exitcode = errno;
					FUNC9("input file %s: %s\n", rand_filename, FUNC10(exitcode));
				} else {
					size = FUNC3(&buffer[addsize], padsize, 1, f_in);
					if (size < 1) {
						if (FUNC1(f_in)) {
							exitcode = FUNC1(f_in);
							FUNC9("input file %s: %s\n", rand_filename, FUNC10(exitcode));
						} else {
							exitcode = 1;
							FUNC9("input file %s: smaller than before *doh*\n", rand_filename);
						}
					}
				}
				FUNC0(f_in);
			}
		}
	}

	// add special contents
	if (!exitcode) {
		FUNC5(DEBUG, "adding rootfs special data\n");
		FUNC7(&buffer[KERNEL_CODE_OFFSET + PRODUCT_ID_OFFSET], product_id, 2);
		FUNC7(&buffer[KERNEL_CODE_OFFSET + PROTOCOL_ID_OFFSET], protocol_id, 2);
		FUNC7(&buffer[KERNEL_CODE_OFFSET + FW_VERSION_OFFSET], fw_version, 2);
		FUNC7(&buffer[KERNEL_CODE_OFFSET + FW_VERSION_OFFSET + 2], rootfs_unknown, 2);
		FUNC7(&buffer[KERNEL_CODE_OFFSET + SIGN_OFFSET], sign, 8);	// eRcOmM

		FUNC5(DEBUG, "adding u-boot special data\n");
//		memcpy(&buffer[KERNEL_CODE_OFFSET + SN_OFF], sn, 12);	// ToDo: currently zero, find out what's this for?
//		memcpy(&buffer[KERNEL_CODE_OFFSET + PIN_OFF], pin, 8);	// ToDo: currently zero, find out what's this for?
//		memcpy(&buffer[KERNEL_CODE_OFFSET + NODE_BASE_OFF], node, 25);	// ToDo: currently zero, find out what's this for?
		FUNC7(&buffer[KERNEL_CODE_OFFSET + BOOT_ADDR_BASE_OFF + PID_OFFSET], pid, 70);	// sErCoMm
		FUNC7(&buffer[KERNEL_CODE_OFFSET + BOOT_ADDR_BASE_OFF + PID_OFFSET + 57], fw_version, 2);

		FUNC5(DEBUG, "adding checksum byte\n");
		csum = 0;
		for (i = 0; i < KERNEL_CODE_OFFSET + FLASH_SIZE; i++) {
			csum += buffer[i];
		}
		FUNC5(DEBUG_LVL2, " checksum 0x%016lX (%li)\n", csum, csum);

		buffer[KERNEL_CODE_OFFSET + NODE_BASE_OFF + 25] = ~csum + 1;
		FUNC5(DEBUG, " byte 0x%02X\n", buffer[KERNEL_CODE_OFFSET + NODE_BASE_OFF + 25]);
	}

	// write bin file
	if (!exitcode) {
		FUNC5(DEBUG, "writing file %s\n", bin_filename);
		f_out = FUNC2(bin_filename, "wb");
		if (!f_out) {
			exitcode = errno;
			FUNC9("output file %s: %s\n", bin_filename, FUNC10(exitcode));
		} else {
			size = FUNC4(buffer, KERNEL_CODE_OFFSET + FLASH_SIZE, 1, f_out);
			if (size < 1) {
				if (FUNC1(f_out)) {
					exitcode = FUNC1(f_out);
					FUNC9("output file %s: %s\n", bin_filename, FUNC10(exitcode));
				} else {
					exitcode = 1;
					FUNC9("output file %s: unspecified write error\n", bin_filename);
				}
			}
			FUNC0(f_out);
		}
	}

	return exitcode;
}