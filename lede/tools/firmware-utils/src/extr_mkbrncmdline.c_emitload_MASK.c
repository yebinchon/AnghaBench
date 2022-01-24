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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4(int outfd, int reg, unsigned value)
{
	char buf[8] = {
		0x3c, 0x04 + reg,
		value >> 24, value >> 16,
		0x34, 0x84 + reg + (reg << 5),
		value >> 8, value,
	};
	if (FUNC3(outfd, buf, sizeof(buf)) != sizeof(buf)) {
		FUNC1(stderr, "write: %s\n", FUNC2(errno));
		FUNC0(1);
	}
}