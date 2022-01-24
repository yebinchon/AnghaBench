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
 int FUNC0 (scalar_t__*) ; 
 scalar_t__* aes_algs ; 
 scalar_t__* aes_simd_algs ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 scalar_t__* mac_algs ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;

	for (i = 0; i < FUNC0(aes_simd_algs); i++)
		if (aes_simd_algs[i])
			FUNC3(aes_simd_algs[i]);

	FUNC1(mac_algs, FUNC0(mac_algs));
	FUNC2(aes_algs, FUNC0(aes_algs));
}