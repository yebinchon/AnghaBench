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
struct jit_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SRTYPE_ASL ; 
 int /*<<< orphan*/  SRTYPE_LSR ; 
 size_t TMP_REG_1 ; 
 size_t TMP_REG_2 ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct jit_ctx*) ; 
 int /*<<< orphan*/ ** bpf2a32 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC7(const s8 dst[],
				    const u32 val, struct jit_ctx *ctx){
	const s8 *tmp = bpf2a32[TMP_REG_1];
	const s8 *tmp2 = bpf2a32[TMP_REG_2];
	const s8 *rd;

	/* Setup operands */
	rd = FUNC4(dst, tmp, ctx);

	/* Do LSH operation */
	if (val < 32) {
		FUNC6(FUNC2(tmp2[0], rd[0], SRTYPE_ASL, val), ctx);
		FUNC6(FUNC3(rd[0], tmp2[0], rd[1], SRTYPE_LSR, 32 - val), ctx);
		FUNC6(FUNC2(rd[1], rd[1], SRTYPE_ASL, val), ctx);
	} else {
		if (val == 32)
			FUNC6(FUNC1(rd[0], rd[1]), ctx);
		else
			FUNC6(FUNC2(rd[0], rd[1], SRTYPE_ASL, val - 32), ctx);
		FUNC6(FUNC0(rd[1], rd[1], rd[1]), ctx);
	}

	FUNC5(dst, rd, ctx);
}