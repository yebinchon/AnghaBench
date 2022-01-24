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
typedef  int /*<<< orphan*/  u128 ;

/* Variables and functions */
 int SERPENT_PARALLEL_BLOCKS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *ctx, u128 *dst, const u128 *src)
{
	u128 ivs[SERPENT_PARALLEL_BLOCKS - 1];
	unsigned int j;

	for (j = 0; j < SERPENT_PARALLEL_BLOCKS - 1; j++)
		ivs[j] = src[j];

	FUNC0(ctx, (u8 *)dst, (u8 *)src);

	for (j = 0; j < SERPENT_PARALLEL_BLOCKS - 1; j++)
		FUNC1(dst + (j + 1), dst + (j + 1), ivs + j);
}