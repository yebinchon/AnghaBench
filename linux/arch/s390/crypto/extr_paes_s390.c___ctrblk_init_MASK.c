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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static unsigned int FUNC2(u8 *ctrptr, u8 *iv, unsigned int nbytes)
{
	unsigned int i, n;

	/* only use complete blocks, max. PAGE_SIZE */
	FUNC1(ctrptr, iv, AES_BLOCK_SIZE);
	n = (nbytes > PAGE_SIZE) ? PAGE_SIZE : nbytes & ~(AES_BLOCK_SIZE - 1);
	for (i = (n / AES_BLOCK_SIZE) - 1; i > 0; i--) {
		FUNC1(ctrptr + AES_BLOCK_SIZE, ctrptr, AES_BLOCK_SIZE);
		FUNC0(ctrptr + AES_BLOCK_SIZE, AES_BLOCK_SIZE);
		ctrptr += AES_BLOCK_SIZE;
	}
	return n;
}