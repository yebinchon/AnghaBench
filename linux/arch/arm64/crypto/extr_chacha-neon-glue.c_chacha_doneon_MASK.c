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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int u32 ;

/* Variables and functions */
 int CHACHA_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(u32 *state, u8 *dst, const u8 *src,
			  int bytes, int nrounds)
{
	while (bytes > 0) {
		int l = FUNC3(bytes, CHACHA_BLOCK_SIZE * 5);

		if (l <= CHACHA_BLOCK_SIZE) {
			u8 buf[CHACHA_BLOCK_SIZE];

			FUNC2(buf, src, l);
			FUNC1(state, buf, buf, nrounds);
			FUNC2(dst, buf, l);
			state[12] += 1;
			break;
		}
		FUNC0(state, dst, src, nrounds, l);
		bytes -= CHACHA_BLOCK_SIZE * 5;
		src += CHACHA_BLOCK_SIZE * 5;
		dst += CHACHA_BLOCK_SIZE * 5;
		state[12] += 5;
	}
}