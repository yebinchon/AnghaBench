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

	r0 = FUNC11(s[0]);
	r1 = FUNC11(s[1]);
	r2 = FUNC11(s[2]);
	r3 = FUNC11(s[3]);

					FUNC0(r0, r1, r2, r3, 32);
	FUNC9(r0, r1, r2, r3, r4);	FUNC1(r1, r3, r0, r4, r2, 31);
	FUNC8(r1, r3, r0, r4, r2);	FUNC1(r0, r2, r4, r1, r3, 30);
	FUNC7(r0, r2, r4, r1, r3);	FUNC1(r2, r3, r0, r4, r1, 29);
	FUNC6(r2, r3, r0, r4, r1);	FUNC1(r2, r0, r1, r4, r3, 28);
	FUNC5(r2, r0, r1, r4, r3);	FUNC1(r1, r2, r3, r4, r0, 27);
	FUNC4(r1, r2, r3, r4, r0);	FUNC1(r2, r0, r4, r3, r1, 26);
	FUNC3(r2, r0, r4, r3, r1);	FUNC1(r1, r0, r4, r3, r2, 25);
	FUNC2(r1, r0, r4, r3, r2);	FUNC1(r4, r2, r0, r1, r3, 24);
	FUNC9(r4, r2, r0, r1, r3);	FUNC1(r2, r1, r4, r3, r0, 23);
	FUNC8(r2, r1, r4, r3, r0);	FUNC1(r4, r0, r3, r2, r1, 22);
	FUNC7(r4, r0, r3, r2, r1);	FUNC1(r0, r1, r4, r3, r2, 21);
	FUNC6(r0, r1, r4, r3, r2);	FUNC1(r0, r4, r2, r3, r1, 20);
	FUNC5(r0, r4, r2, r3, r1);	FUNC1(r2, r0, r1, r3, r4, 19);
	FUNC4(r2, r0, r1, r3, r4);	FUNC1(r0, r4, r3, r1, r2, 18);
	FUNC3(r0, r4, r3, r1, r2);	FUNC1(r2, r4, r3, r1, r0, 17);
	FUNC2(r2, r4, r3, r1, r0);	FUNC1(r3, r0, r4, r2, r1, 16);
	FUNC9(r3, r0, r4, r2, r1);	FUNC1(r0, r2, r3, r1, r4, 15);
	FUNC8(r0, r2, r3, r1, r4);	FUNC1(r3, r4, r1, r0, r2, 14);
	FUNC7(r3, r4, r1, r0, r2);	FUNC1(r4, r2, r3, r1, r0, 13);
	FUNC6(r4, r2, r3, r1, r0);	FUNC1(r4, r3, r0, r1, r2, 12);
	FUNC5(r4, r3, r0, r1, r2);	FUNC1(r0, r4, r2, r1, r3, 11);
	FUNC4(r0, r4, r2, r1, r3);	FUNC1(r4, r3, r1, r2, r0, 10);
	FUNC3(r4, r3, r1, r2, r0);	FUNC1(r0, r3, r1, r2, r4, 9);
	FUNC2(r0, r3, r1, r2, r4);	FUNC1(r1, r4, r3, r0, r2, 8);
	FUNC9(r1, r4, r3, r0, r2);	FUNC1(r4, r0, r1, r2, r3, 7);
	FUNC8(r4, r0, r1, r2, r3);	FUNC1(r1, r3, r2, r4, r0, 6);
	FUNC7(r1, r3, r2, r4, r0);	FUNC1(r3, r0, r1, r2, r4, 5);
	FUNC6(r3, r0, r1, r2, r4);	FUNC1(r3, r1, r4, r2, r0, 4);
	FUNC5(r3, r1, r4, r2, r0);	FUNC1(r4, r3, r0, r2, r1, 3);
	FUNC4(r4, r3, r0, r2, r1);	FUNC1(r3, r1, r2, r0, r4, 2);
	FUNC3(r3, r1, r2, r0, r4);	FUNC1(r4, r1, r2, r0, r3, 1);
	FUNC2(r4, r1, r2, r0, r3);	FUNC0(r2, r3, r1, r4, 0);

	d[0] = FUNC10(r2);
	d[1] = FUNC10(r3);
	d[2] = FUNC10(r1);
	d[3] = FUNC10(r4);
}