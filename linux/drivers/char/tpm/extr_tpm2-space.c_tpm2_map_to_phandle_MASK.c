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
typedef  int u32 ;
struct tpm_space {int* context_tbl; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct tpm_space *space, void *handle)
{
	u32 vhandle = FUNC1((__be32 *)handle);
	u32 phandle;
	int i;

	i = 0xFFFFFF - (vhandle & 0xFFFFFF);
	if (i >= FUNC0(space->context_tbl) || !space->context_tbl[i])
		return false;

	phandle = space->context_tbl[i];
	*((__be32 *)handle) = FUNC2(phandle);
	return true;
}