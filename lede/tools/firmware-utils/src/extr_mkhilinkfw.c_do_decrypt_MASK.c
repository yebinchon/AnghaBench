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
typedef  int off_t ;
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  DES_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  schedule ; 

__attribute__((used)) static void FUNC1(void *p, off_t len)
{
	DES_cblock *pblock;
	int num_blocks;
 
	num_blocks = (len - 3) / 8;
	pblock = (DES_cblock *) (p + 3);
	while (num_blocks--) {
		FUNC0(pblock, pblock, &schedule, DES_DECRYPT);
		pblock++;
	}
 
	num_blocks = len / 8;
	pblock = (DES_cblock *) p;
	while (num_blocks--) {
		FUNC0(pblock, pblock, &schedule, DES_DECRYPT);
		pblock++;
	}
}