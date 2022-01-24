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
 unsigned long long FUNC1 (unsigned char const*,size_t*) ; 

void FUNC2(void)
{
	const unsigned char *buf = (unsigned char *)"AB";
	size_t size;

	FUNC0(FUNC1(buf, &size) == 65);
	FUNC0(size == 1);

	buf = (unsigned char *)"\xfe\xdc\xbaXY";
	FUNC0(FUNC1(buf, &size) == 267869656);
	FUNC0(size == 4);

	buf = (unsigned char *)"\xaa\xaa\xfe\xdc\xbaXY";
	FUNC0(FUNC1(buf, &size) == 1489279344088ULL);
	FUNC0(size == 6);

	buf = (unsigned char *)"\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xfe\xdc\xbaXY";
	FUNC0(FUNC1(buf, &size) == 0);
	FUNC0(size == 0);

}