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
struct fwimage_trailer {int /*<<< orphan*/  crc32; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FWIMAGE_MAGIC ; 
 int FUNC0 (struct fwimage_trailer*) ; 
 int FUNC1 (struct fwimage_trailer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  firmware_file ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int FUNC6 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ metadata_file ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ signature_file ; 
 int /*<<< orphan*/  FUNC9 (struct fwimage_trailer*,char*,int) ; 

__attribute__((used)) static int
FUNC10(const char *name)
{
	struct fwimage_trailer tr = {
		.magic = FUNC2(FWIMAGE_MAGIC),
		.crc32 = ~0,
	};
	int file_len = 0;
	int ret = 0;

	firmware_file = FUNC5(name, "r+");
	if (!firmware_file) {
		FUNC8("Failed to open firmware file\n");
		return 1;
	}

	while (1) {
		char buf[512];
		int len;

		len = FUNC6(buf, 1, sizeof(buf), firmware_file);
		if (!len)
			break;

		file_len += len;
		FUNC9(&tr, buf, len);
	}

	if (metadata_file)
		ret = FUNC0(&tr);
	else if (signature_file)
		ret = FUNC1(&tr);

	if (ret) {
		FUNC3(firmware_file);
		FUNC7(FUNC4(firmware_file), file_len);
	}

	return ret;
}