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
typedef  int uint32_t ;
typedef  int byte ;
struct TYPE_2__ {int totalN; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 TYPE_1__* m ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

__attribute__((used)) static void FUNC5(byte *in, int n)
{
	byte buf[128];
	uint32_t M[16];
	uint32_t b;

	m->totalN += n;

	b = m->totalN * 8;

	FUNC1(buf, 0, 128);
	if (n) FUNC0(buf, in, n);
	buf[n] = 0x80;

	if (n <= 55) {
		FUNC2(buf+56, b);
		FUNC3(M, buf);
		FUNC4(M);
	} else {
		FUNC2(buf+120, b);
		FUNC3(M, buf);
		FUNC4(M);
		FUNC3(M, buf+64);
		FUNC4(M);
	}
}