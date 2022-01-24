#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct fw_header {int version; int boot_len; int unk2; int unk3; char* vendor_name; char* fw_version; int hw_id; int hw_rev; int region_code; int kernel_ofs; int kernel_len; int kernel_la; int kernel_ep; int rootfs_ofs; int rootfs_len; int boot_ofs; int fw_length; int /*<<< orphan*/ * md5sum2; int /*<<< orphan*/ * md5sum1; } ;
typedef  int /*<<< orphan*/  md5sum ;
struct TYPE_3__ {int file_size; char* file_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EXIT_FAILURE ; 
 int HEADER_VERSION_V1 ; 
 int HEADER_VERSION_V2 ; 
 int MD5SUM_LEN ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ extract ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 TYPE_1__ inspect_info ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/ * md5salt_boot ; 
 int /*<<< orphan*/ * md5salt_normal ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int FUNC15 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (char*) ; 

__attribute__((used)) static int FUNC19(void)
{
	char *buf;
	struct fw_header *hdr;
	uint8_t md5sum[MD5SUM_LEN];
	int ret = EXIT_FAILURE;

	buf = FUNC10(inspect_info.file_size);
	if (!buf) {
		FUNC0("no memory for buffer!\n");
		goto out;
	}

	ret = FUNC15(&inspect_info, buf);
	if (ret)
		goto out_free_buf;
	hdr = (struct fw_header *)buf;

	FUNC9("File name", inspect_info.file_name);
	FUNC7("File size", inspect_info.file_size);

	if ((FUNC13(hdr->version) != HEADER_VERSION_V1) &&
	    (FUNC13(hdr->version) != HEADER_VERSION_V2)) {
		FUNC0("file does not seem to have V1/V2 header!\n");
		goto out_free_buf;
	}

	FUNC7("Version 1 Header size", sizeof(struct fw_header));

	FUNC12(md5sum, hdr->md5sum1, sizeof(md5sum));
	if (FUNC13(hdr->boot_len) == 0)
		FUNC12(hdr->md5sum1, md5salt_normal, sizeof(md5sum));
	else
		FUNC12(hdr->md5sum1, md5salt_boot, sizeof(md5sum));
	FUNC5(buf, inspect_info.file_size, hdr->md5sum1);

	if (FUNC11(md5sum, hdr->md5sum1, sizeof(md5sum))) {
		FUNC8("Header MD5Sum1", md5sum, "(*ERROR*)");
		FUNC8("          --> expected", hdr->md5sum1, "");
	} else {
		FUNC8("Header MD5Sum1", md5sum, "(ok)");
	}
	if (FUNC13(hdr->unk2) != 0)
		FUNC7("Unknown value 2", hdr->unk2);
	FUNC8("Header MD5Sum2", hdr->md5sum2,
	                   "(purpose yet unknown, unchecked here)");
	if (FUNC13(hdr->unk3) != 0)
		FUNC7("Unknown value 3", hdr->unk3);

	FUNC14("\n");

	FUNC9("Vendor name", hdr->vendor_name);
	FUNC9("Firmware version", hdr->fw_version);
	FUNC6("Hardware ID", FUNC13(hdr->hw_id));
	FUNC6("Hardware Revision", FUNC13(hdr->hw_rev));
	FUNC6("Region code", FUNC13(hdr->region_code));

	FUNC14("\n");

	FUNC7("Kernel data offset",
	                   FUNC13(hdr->kernel_ofs));
	FUNC7("Kernel data length",
	                   FUNC13(hdr->kernel_len));
	FUNC6("Kernel load address",
	                FUNC13(hdr->kernel_la));
	FUNC6("Kernel entry point",
	                FUNC13(hdr->kernel_ep));
	FUNC7("Rootfs data offset",
	                   FUNC13(hdr->rootfs_ofs));
	FUNC7("Rootfs data length",
	                   FUNC13(hdr->rootfs_len));
	FUNC7("Boot loader data offset",
	                   FUNC13(hdr->boot_ofs));
	FUNC7("Boot loader data length",
	                   FUNC13(hdr->boot_len));
	FUNC7("Total firmware length",
	                   FUNC13(hdr->fw_length));

	if (extract) {
		FILE *fp;
		char *filename;

		FUNC14("\n");

		filename = FUNC10(FUNC18(inspect_info.file_name) + 8);
		FUNC16(filename, "%s-kernel", inspect_info.file_name);
		FUNC14("Extracting kernel to \"%s\"...\n", filename);
		fp = FUNC2(filename, "w");
		if (fp)	{
			if (!FUNC4(buf + FUNC13(hdr->kernel_ofs),
			            FUNC13(hdr->kernel_len), 1, fp)) {
				FUNC0("error in fwrite(): %s", FUNC17(errno));
			}
			FUNC1(fp);
		} else {
			FUNC0("error in fopen(): %s", FUNC17(errno));
		}
		FUNC3(filename);

		filename = FUNC10(FUNC18(inspect_info.file_name) + 8);
		FUNC16(filename, "%s-rootfs", inspect_info.file_name);
		FUNC14("Extracting rootfs to \"%s\"...\n", filename);
		fp = FUNC2(filename, "w");
		if (fp)	{
			if (!FUNC4(buf + FUNC13(hdr->rootfs_ofs),
			            FUNC13(hdr->rootfs_len), 1, fp)) {
				FUNC0("error in fwrite(): %s", FUNC17(errno));
			}
			FUNC1(fp);
		} else {
			FUNC0("error in fopen(): %s", FUNC17(errno));
		}
		FUNC3(filename);
	}

 out_free_buf:
	FUNC3(buf);
 out:
	return ret;
}