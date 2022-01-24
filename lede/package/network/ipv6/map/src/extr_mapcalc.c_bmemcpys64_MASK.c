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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void FUNC4(void *av, const void *bv, size_t frombits, size_t nbits)
{
	uint64_t buf = 0;
	const uint8_t *b = bv;
	size_t frombyte = frombits / 8, tobyte = (frombits + nbits) / 8;

	FUNC3(&buf, &b[frombyte], tobyte - frombyte + 1);
	buf = FUNC2(FUNC0(buf) << (frombits % 8));

	FUNC1(av, &buf, nbits);
}