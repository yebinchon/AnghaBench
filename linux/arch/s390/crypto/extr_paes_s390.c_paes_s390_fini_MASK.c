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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cbc_paes_alg ; 
 int /*<<< orphan*/  ctr_paes_alg ; 
 scalar_t__ ctrblk ; 
 int /*<<< orphan*/  ecb_paes_alg ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  xts_paes_alg ; 

__attribute__((used)) static void FUNC2(void)
{
	if (ctrblk)
		FUNC1((unsigned long) ctrblk);
	FUNC0(&ctr_paes_alg);
	FUNC0(&xts_paes_alg);
	FUNC0(&cbc_paes_alg);
	FUNC0(&ecb_paes_alg);
}