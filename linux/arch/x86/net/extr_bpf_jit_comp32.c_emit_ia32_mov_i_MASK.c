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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const) ; 
 int /*<<< orphan*/  const IA32_EAX ; 
 int /*<<< orphan*/  const IA32_EBP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static inline void FUNC7(const u8 dst, const u32 val, bool dstk,
				   u8 **pprog)
{
	u8 *prog = *pprog;
	int cnt = 0;

	if (dstk) {
		if (val == 0) {
			/* xor eax,eax */
			FUNC0(0x33, FUNC6(0xC0, IA32_EAX, IA32_EAX));
			/* mov dword ptr [ebp+off],eax */
			FUNC2(0x89, FUNC6(0x40, IA32_EBP, IA32_EAX),
			      FUNC4(dst));
		} else {
			FUNC3(0xC7, FUNC5(0x40, IA32_EBP),
				    FUNC4(dst), val);
		}
	} else {
		if (val == 0)
			FUNC0(0x33, FUNC6(0xC0, dst, dst));
		else
			FUNC1(0xC7, FUNC5(0xC0, dst),
				    val);
	}
	*pprog = prog;
}