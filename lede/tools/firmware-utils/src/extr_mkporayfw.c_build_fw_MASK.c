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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct fw_header {int dummy; } ;
struct TYPE_2__ {int fw_max_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  firmware_info ; 
 int firmware_len ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 TYPE_1__* layout ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
	int buflen;
	uint8_t *buf, *p;
	int ret = EXIT_FAILURE;
	int writelen = 0;
	uint16_t checksum;

	buflen = layout->fw_max_len;

	buf = (uint8_t *) FUNC4(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto out;
	}

	FUNC5(buf, 0xff, buflen);
	p = buf + sizeof (struct fw_header);
	ret = FUNC6(&firmware_info, p);
	if (ret) {
		goto out_free_buf;
	}
	writelen = sizeof (struct fw_header) + firmware_len + 2;

	/* Fill in header */
	FUNC2(buf);

	/* Compute firmware checksum */
	checksum = FUNC1(buf + sizeof (struct fw_header), firmware_len);

	/* Cannot use network order function because checksum is not word-aligned */
	buf[writelen - 1] = checksum >> 8;
	buf[writelen - 2] = checksum & 0xff;

	/* XOR obfuscate firmware */
	FUNC8(buf + sizeof (struct fw_header), firmware_len + 2);

	/* Write firmware file */
	ret = FUNC7(buf, writelen);
	if (ret) {
		goto out_free_buf;
	}
	ret = EXIT_SUCCESS;

 out_free_buf:
	FUNC3(buf);
 out:
	return ret;
}