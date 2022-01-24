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
 int ATARI_CKS_LOC ; 
 int ATARI_CKS_RANGE_END ; 
 int ATARI_CKS_RANGE_START ; 
 unsigned char FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(void)
{
	int i;
	unsigned char sum = 0;

	for (i = ATARI_CKS_RANGE_START; i <= ATARI_CKS_RANGE_END; ++i)
		sum += FUNC0(i);
	return (FUNC0(ATARI_CKS_LOC) == (~sum & 0xff)) &&
	       (FUNC0(ATARI_CKS_LOC + 1) == (sum & 0xff));
}