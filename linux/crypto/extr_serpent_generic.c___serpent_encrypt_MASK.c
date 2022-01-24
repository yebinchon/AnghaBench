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
typedef  int /*<<< orphan*/  u32 ;
struct serpent_ctx {int /*<<< orphan*/ * expkey; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const) ; 

void FUNC12(struct serpent_ctx *ctx, u8 *dst, const u8 *src)
{
	const u32 *k = ctx->expkey;
	const __le32 *s = (const __le32 *)src;
	__le32	*d = (__le32 *)dst;
	u32	r0, r1, r2, r3, r4;

/*
 * Note: The conversions between u8* and u32* might cause trouble
 * on architectures with stricter alignment rules than x86
 */

	r0 = FUNC11(s[0]);
	r1 = FUNC11(s[1]);
	r2 = FUNC11(s[2]);
	r3 = FUNC11(s[3]);

					FUNC0(r0, r1, r2, r3, 0);
	FUNC2(r0, r1, r2, r3, r4);		FUNC1(r2, r1, r3, r0, r4, 1);
	FUNC3(r2, r1, r3, r0, r4);		FUNC1(r4, r3, r0, r2, r1, 2);
	FUNC4(r4, r3, r0, r2, r1);		FUNC1(r1, r3, r4, r2, r0, 3);
	FUNC5(r1, r3, r4, r2, r0);		FUNC1(r2, r0, r3, r1, r4, 4);
	FUNC6(r2, r0, r3, r1, r4);		FUNC1(r0, r3, r1, r4, r2, 5);
	FUNC7(r0, r3, r1, r4, r2);		FUNC1(r2, r0, r3, r4, r1, 6);
	FUNC8(r2, r0, r3, r4, r1);		FUNC1(r3, r1, r0, r4, r2, 7);
	FUNC9(r3, r1, r0, r4, r2);		FUNC1(r2, r0, r4, r3, r1, 8);
	FUNC2(r2, r0, r4, r3, r1);		FUNC1(r4, r0, r3, r2, r1, 9);
	FUNC3(r4, r0, r3, r2, r1);		FUNC1(r1, r3, r2, r4, r0, 10);
	FUNC4(r1, r3, r2, r4, r0);		FUNC1(r0, r3, r1, r4, r2, 11);
	FUNC5(r0, r3, r1, r4, r2);		FUNC1(r4, r2, r3, r0, r1, 12);
	FUNC6(r4, r2, r3, r0, r1);		FUNC1(r2, r3, r0, r1, r4, 13);
	FUNC7(r2, r3, r0, r1, r4);		FUNC1(r4, r2, r3, r1, r0, 14);
	FUNC8(r4, r2, r3, r1, r0);		FUNC1(r3, r0, r2, r1, r4, 15);
	FUNC9(r3, r0, r2, r1, r4);		FUNC1(r4, r2, r1, r3, r0, 16);
	FUNC2(r4, r2, r1, r3, r0);		FUNC1(r1, r2, r3, r4, r0, 17);
	FUNC3(r1, r2, r3, r4, r0);		FUNC1(r0, r3, r4, r1, r2, 18);
	FUNC4(r0, r3, r4, r1, r2);		FUNC1(r2, r3, r0, r1, r4, 19);
	FUNC5(r2, r3, r0, r1, r4);		FUNC1(r1, r4, r3, r2, r0, 20);
	FUNC6(r1, r4, r3, r2, r0);		FUNC1(r4, r3, r2, r0, r1, 21);
	FUNC7(r4, r3, r2, r0, r1);		FUNC1(r1, r4, r3, r0, r2, 22);
	FUNC8(r1, r4, r3, r0, r2);		FUNC1(r3, r2, r4, r0, r1, 23);
	FUNC9(r3, r2, r4, r0, r1);		FUNC1(r1, r4, r0, r3, r2, 24);
	FUNC2(r1, r4, r0, r3, r2);		FUNC1(r0, r4, r3, r1, r2, 25);
	FUNC3(r0, r4, r3, r1, r2);		FUNC1(r2, r3, r1, r0, r4, 26);
	FUNC4(r2, r3, r1, r0, r4);		FUNC1(r4, r3, r2, r0, r1, 27);
	FUNC5(r4, r3, r2, r0, r1);		FUNC1(r0, r1, r3, r4, r2, 28);
	FUNC6(r0, r1, r3, r4, r2);		FUNC1(r1, r3, r4, r2, r0, 29);
	FUNC7(r1, r3, r4, r2, r0);		FUNC1(r0, r1, r3, r2, r4, 30);
	FUNC8(r0, r1, r3, r2, r4);		FUNC1(r3, r4, r1, r2, r0, 31);
	FUNC9(r3, r4, r1, r2, r0);		FUNC0(r0, r1, r2, r3, 32);

	d[0] = FUNC10(r0);
	d[1] = FUNC10(r1);
	d[2] = FUNC10(r2);
	d[3] = FUNC10(r3);
}