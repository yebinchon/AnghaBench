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
struct jit_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  const ARM_IP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  SRTYPE_LSL ; 
 int /*<<< orphan*/  SRTYPE_LSR ; 
 size_t TMP_REG_2 ; 
 int /*<<< orphan*/ ** bpf2a32 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC6(const u8 rd, const u8 rn, struct jit_ctx *ctx)
{
#if __LINUX_ARM_ARCH__ < 6
	const s8 *tmp2 = bpf2a32[TMP_REG_2];

	FUNC5(FUNC0(tmp2[1], rn, 0xff), ctx);
	FUNC5(FUNC1(tmp2[0], rn, SRTYPE_LSR, 24), ctx);
	FUNC5(FUNC3(ARM_IP, tmp2[0], tmp2[1], SRTYPE_LSL, 24), ctx);

	FUNC5(FUNC1(tmp2[1], rn, SRTYPE_LSR, 8), ctx);
	FUNC5(FUNC0(tmp2[1], tmp2[1], 0xff), ctx);
	FUNC5(FUNC1(tmp2[0], rn, SRTYPE_LSR, 16), ctx);
	FUNC5(FUNC0(tmp2[0], tmp2[0], 0xff), ctx);
	FUNC5(FUNC1(tmp2[0], tmp2[0], SRTYPE_LSL, 8), ctx);
	FUNC5(FUNC3(tmp2[0], tmp2[0], tmp2[1], SRTYPE_LSL, 16), ctx);
	FUNC5(FUNC2(rd, ARM_IP, tmp2[0]), ctx);

#else /* ARMv6+ */
	emit(ARM_REV(rd, rn), ctx);
#endif
}