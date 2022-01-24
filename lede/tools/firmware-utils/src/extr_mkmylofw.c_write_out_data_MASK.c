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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

int
FUNC3(FILE *outfile, uint8_t *data, size_t len, uint32_t *crc)
{
	errno = 0;

	FUNC1(data, len, 1, outfile);
	if (errno) {
		FUNC0(1,"unable to write output file");
		return -1;
	}

	if (crc) {
		FUNC2(data, len, crc);
	}

	return 0;
}