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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IA32_EBP ; 
 int /*<<< orphan*/  IA32_ECX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src_hi ; 
 int /*<<< orphan*/  src_lo ; 

__attribute__((used)) static inline void FUNC4(const u8 src[], u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;

	/* mov ecx,dword ptr [ebp+off] */
	FUNC1(0x8B, FUNC3(0x40, IA32_EBP, IA32_ECX), FUNC2(src_hi));
	/* push ecx */
	FUNC0(0x51);

	/* mov ecx,dword ptr [ebp+off] */
	FUNC1(0x8B, FUNC3(0x40, IA32_EBP, IA32_ECX), FUNC2(src_lo));
	/* push ecx */
	FUNC0(0x51);

	*pprog = prog;
}