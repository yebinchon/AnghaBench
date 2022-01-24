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
typedef  int /*<<< orphan*/  const u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const IA32_EAX ; 
 int /*<<< orphan*/  const IA32_EBP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static inline void FUNC4(const u8 dst, const u8 src, bool dstk,
				   bool sstk, u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;
	u8 sreg = sstk ? IA32_EAX : src;

	if (sstk)
		/* mov eax,dword ptr [ebp+off] */
		FUNC1(0x8B, FUNC3(0x40, IA32_EBP, IA32_EAX), FUNC2(src));
	if (dstk)
		/* mov dword ptr [ebp+off],eax */
		FUNC1(0x89, FUNC3(0x40, IA32_EBP, sreg), FUNC2(dst));
	else
		/* mov dst,sreg */
		FUNC0(0x89, FUNC3(0xC0, dst, sreg));

	*pprog = prog;
}