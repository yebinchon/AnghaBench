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
typedef  int u8 ;
struct jit_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  BPF_B 131 
#define  BPF_DW 130 
#define  BPF_H 129 
#define  BPF_W 128 
 size_t TMP_REG_1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,struct jit_ctx*) ; 
 int /*<<< orphan*/ ** bpf2a32 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int,struct jit_ctx*) ; 
 int /*<<< orphan*/  src_hi ; 
 int /*<<< orphan*/  src_lo ; 

__attribute__((used)) static inline void FUNC7(const s8 dst, const s8 src[],
			      s32 off, struct jit_ctx *ctx, const u8 sz){
	const s8 *tmp = bpf2a32[TMP_REG_1];
	s32 off_max;
	s8 rd;

	rd = FUNC4(dst, tmp[1], ctx);

	if (sz == BPF_H)
		off_max = 0xff;
	else
		off_max = 0xfff;

	if (off < 0 || off > off_max) {
		FUNC6(tmp[0], off, ctx);
		FUNC5(FUNC0(tmp[0], tmp[0], rd), ctx);
		rd = tmp[0];
		off = 0;
	}
	switch (sz) {
	case BPF_B:
		/* Store a Byte */
		FUNC5(FUNC1(src_lo, rd, off), ctx);
		break;
	case BPF_H:
		/* Store a HalfWord */
		FUNC5(FUNC2(src_lo, rd, off), ctx);
		break;
	case BPF_W:
		/* Store a Word */
		FUNC5(FUNC3(src_lo, rd, off), ctx);
		break;
	case BPF_DW:
		/* Store a Double Word */
		FUNC5(FUNC3(src_lo, rd, off), ctx);
		FUNC5(FUNC3(src_hi, rd, off + 4), ctx);
		break;
	}
}