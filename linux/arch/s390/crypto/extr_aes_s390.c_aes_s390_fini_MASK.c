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
 scalar_t__ aes_s390_aead_alg ; 
 size_t aes_s390_algs_num ; 
 int /*<<< orphan*/ * aes_s390_algs_ptr ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ctrblk ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(void)
{
	while (aes_s390_algs_num--)
		FUNC1(aes_s390_algs_ptr[aes_s390_algs_num]);
	if (ctrblk)
		FUNC2((unsigned long) ctrblk);

	if (aes_s390_aead_alg)
		FUNC0(aes_s390_aead_alg);
}