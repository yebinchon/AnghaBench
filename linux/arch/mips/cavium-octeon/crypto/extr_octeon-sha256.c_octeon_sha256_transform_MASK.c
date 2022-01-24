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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 

__attribute__((used)) static void FUNC2(const void *_block)
{
	const u64 *block = _block;

	FUNC1(block[0], 0);
	FUNC1(block[1], 1);
	FUNC1(block[2], 2);
	FUNC1(block[3], 3);
	FUNC1(block[4], 4);
	FUNC1(block[5], 5);
	FUNC1(block[6], 6);
	FUNC0(block[7]);
}