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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,int) ; 

void FUNC3(void)
{
	unsigned char buf[100];
	FUNC0(FUNC1(buf, 100, 65) == 1);
	FUNC0(buf[0] == 'A');

	FUNC0(FUNC1(buf, 1, 1) == 1);
	FUNC0(!FUNC2(buf, "\x01", 1));

	FUNC0(FUNC1(buf, 100, 267869656) == 4);
	FUNC0(!FUNC2(buf, "\xfe\xdc\xbaX", 4));

	FUNC0(FUNC1(buf, 100, 1489279344088ULL) == 6);
	FUNC0(!FUNC2(buf, "\xaa\xaa\xfe\xdc\xbaX", 6));

	FUNC0(FUNC1(buf, 1, 1489279344088ULL) == -1);
}