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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  readbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

uint32_t FUNC5(uint32_t crc, FILE *binfile, size_t compute_start, size_t compute_len)
{
	uint8_t readbuf[1024];
	size_t read;

	FUNC4(binfile, compute_start, SEEK_SET);

	/* read block of 1024 bytes */
	while (binfile && !FUNC1(binfile) && !FUNC2(binfile) && (compute_len >= sizeof(readbuf))) {
		read = FUNC3(readbuf, sizeof(uint8_t), sizeof(readbuf), binfile);
		crc = FUNC0(crc, readbuf, read);
		compute_len = compute_len - read;
	}

	/* Less than 1024 bytes remains, read compute_len bytes */
	if (binfile && !FUNC1(binfile) && !FUNC2(binfile) && (compute_len > 0)) {
		read = FUNC3(readbuf, sizeof(uint8_t), compute_len, binfile);
		crc = FUNC0(crc, readbuf, read);
	}

	return crc;
}