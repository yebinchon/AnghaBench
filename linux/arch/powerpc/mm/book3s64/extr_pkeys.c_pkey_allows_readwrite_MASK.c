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
 int AMR_RD_BIT ; 
 int AMR_WR_BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static inline bool FUNC3(int pkey)
{
	int pkey_shift = FUNC1(pkey);

	if (!FUNC0(pkey))
		return true;

	return !(FUNC2() & ((AMR_RD_BIT|AMR_WR_BIT) << pkey_shift));
}