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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  F1 ; 
 int /*<<< orphan*/  F2 ; 
 int /*<<< orphan*/  F3 ; 
 int /*<<< orphan*/  F4 ; 
 int /*<<< orphan*/  K1 ; 
 int /*<<< orphan*/  K2 ; 
 int /*<<< orphan*/  K3 ; 
 int /*<<< orphan*/  K4 ; 
 int /*<<< orphan*/  KK1 ; 
 int /*<<< orphan*/  KK2 ; 
 int /*<<< orphan*/  KK3 ; 
 int /*<<< orphan*/  KK4 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int) ; 

__attribute__((used)) static void FUNC1(u32 *state, const __le32 *in)
{
	u32 aa, bb, cc, dd, aaa, bbb, ccc, ddd;

	/* Initialize left lane */
	aa = state[0];
	bb = state[1];
	cc = state[2];
	dd = state[3];

	/* Initialize right lane */
	aaa = state[0];
	bbb = state[1];
	ccc = state[2];
	ddd = state[3];

	/* round 1: left lane */
	FUNC0(aa, bb, cc, dd, F1, K1, in[0],  11);
	FUNC0(dd, aa, bb, cc, F1, K1, in[1],  14);
	FUNC0(cc, dd, aa, bb, F1, K1, in[2],  15);
	FUNC0(bb, cc, dd, aa, F1, K1, in[3],  12);
	FUNC0(aa, bb, cc, dd, F1, K1, in[4],   5);
	FUNC0(dd, aa, bb, cc, F1, K1, in[5],   8);
	FUNC0(cc, dd, aa, bb, F1, K1, in[6],   7);
	FUNC0(bb, cc, dd, aa, F1, K1, in[7],   9);
	FUNC0(aa, bb, cc, dd, F1, K1, in[8],  11);
	FUNC0(dd, aa, bb, cc, F1, K1, in[9],  13);
	FUNC0(cc, dd, aa, bb, F1, K1, in[10], 14);
	FUNC0(bb, cc, dd, aa, F1, K1, in[11], 15);
	FUNC0(aa, bb, cc, dd, F1, K1, in[12],  6);
	FUNC0(dd, aa, bb, cc, F1, K1, in[13],  7);
	FUNC0(cc, dd, aa, bb, F1, K1, in[14],  9);
	FUNC0(bb, cc, dd, aa, F1, K1, in[15],  8);

	/* round 2: left lane */
	FUNC0(aa, bb, cc, dd, F2, K2, in[7],   7);
	FUNC0(dd, aa, bb, cc, F2, K2, in[4],   6);
	FUNC0(cc, dd, aa, bb, F2, K2, in[13],  8);
	FUNC0(bb, cc, dd, aa, F2, K2, in[1],  13);
	FUNC0(aa, bb, cc, dd, F2, K2, in[10], 11);
	FUNC0(dd, aa, bb, cc, F2, K2, in[6],   9);
	FUNC0(cc, dd, aa, bb, F2, K2, in[15],  7);
	FUNC0(bb, cc, dd, aa, F2, K2, in[3],  15);
	FUNC0(aa, bb, cc, dd, F2, K2, in[12],  7);
	FUNC0(dd, aa, bb, cc, F2, K2, in[0],  12);
	FUNC0(cc, dd, aa, bb, F2, K2, in[9],  15);
	FUNC0(bb, cc, dd, aa, F2, K2, in[5],   9);
	FUNC0(aa, bb, cc, dd, F2, K2, in[2],  11);
	FUNC0(dd, aa, bb, cc, F2, K2, in[14],  7);
	FUNC0(cc, dd, aa, bb, F2, K2, in[11], 13);
	FUNC0(bb, cc, dd, aa, F2, K2, in[8],  12);

	/* round 3: left lane */
	FUNC0(aa, bb, cc, dd, F3, K3, in[3],  11);
	FUNC0(dd, aa, bb, cc, F3, K3, in[10], 13);
	FUNC0(cc, dd, aa, bb, F3, K3, in[14],  6);
	FUNC0(bb, cc, dd, aa, F3, K3, in[4],   7);
	FUNC0(aa, bb, cc, dd, F3, K3, in[9],  14);
	FUNC0(dd, aa, bb, cc, F3, K3, in[15],  9);
	FUNC0(cc, dd, aa, bb, F3, K3, in[8],  13);
	FUNC0(bb, cc, dd, aa, F3, K3, in[1],  15);
	FUNC0(aa, bb, cc, dd, F3, K3, in[2],  14);
	FUNC0(dd, aa, bb, cc, F3, K3, in[7],   8);
	FUNC0(cc, dd, aa, bb, F3, K3, in[0],  13);
	FUNC0(bb, cc, dd, aa, F3, K3, in[6],   6);
	FUNC0(aa, bb, cc, dd, F3, K3, in[13],  5);
	FUNC0(dd, aa, bb, cc, F3, K3, in[11], 12);
	FUNC0(cc, dd, aa, bb, F3, K3, in[5],   7);
	FUNC0(bb, cc, dd, aa, F3, K3, in[12],  5);

	/* round 4: left lane */
	FUNC0(aa, bb, cc, dd, F4, K4, in[1],  11);
	FUNC0(dd, aa, bb, cc, F4, K4, in[9],  12);
	FUNC0(cc, dd, aa, bb, F4, K4, in[11], 14);
	FUNC0(bb, cc, dd, aa, F4, K4, in[10], 15);
	FUNC0(aa, bb, cc, dd, F4, K4, in[0],  14);
	FUNC0(dd, aa, bb, cc, F4, K4, in[8],  15);
	FUNC0(cc, dd, aa, bb, F4, K4, in[12],  9);
	FUNC0(bb, cc, dd, aa, F4, K4, in[4],   8);
	FUNC0(aa, bb, cc, dd, F4, K4, in[13],  9);
	FUNC0(dd, aa, bb, cc, F4, K4, in[3],  14);
	FUNC0(cc, dd, aa, bb, F4, K4, in[7],   5);
	FUNC0(bb, cc, dd, aa, F4, K4, in[15],  6);
	FUNC0(aa, bb, cc, dd, F4, K4, in[14],  8);
	FUNC0(dd, aa, bb, cc, F4, K4, in[5],   6);
	FUNC0(cc, dd, aa, bb, F4, K4, in[6],   5);
	FUNC0(bb, cc, dd, aa, F4, K4, in[2],  12);

	/* round 1: right lane */
	FUNC0(aaa, bbb, ccc, ddd, F4, KK1, in[5],   8);
	FUNC0(ddd, aaa, bbb, ccc, F4, KK1, in[14],  9);
	FUNC0(ccc, ddd, aaa, bbb, F4, KK1, in[7],   9);
	FUNC0(bbb, ccc, ddd, aaa, F4, KK1, in[0],  11);
	FUNC0(aaa, bbb, ccc, ddd, F4, KK1, in[9],  13);
	FUNC0(ddd, aaa, bbb, ccc, F4, KK1, in[2],  15);
	FUNC0(ccc, ddd, aaa, bbb, F4, KK1, in[11], 15);
	FUNC0(bbb, ccc, ddd, aaa, F4, KK1, in[4],   5);
	FUNC0(aaa, bbb, ccc, ddd, F4, KK1, in[13],  7);
	FUNC0(ddd, aaa, bbb, ccc, F4, KK1, in[6],   7);
	FUNC0(ccc, ddd, aaa, bbb, F4, KK1, in[15],  8);
	FUNC0(bbb, ccc, ddd, aaa, F4, KK1, in[8],  11);
	FUNC0(aaa, bbb, ccc, ddd, F4, KK1, in[1],  14);
	FUNC0(ddd, aaa, bbb, ccc, F4, KK1, in[10], 14);
	FUNC0(ccc, ddd, aaa, bbb, F4, KK1, in[3],  12);
	FUNC0(bbb, ccc, ddd, aaa, F4, KK1, in[12],  6);

	/* round 2: right lane */
	FUNC0(aaa, bbb, ccc, ddd, F3, KK2, in[6],   9);
	FUNC0(ddd, aaa, bbb, ccc, F3, KK2, in[11], 13);
	FUNC0(ccc, ddd, aaa, bbb, F3, KK2, in[3],  15);
	FUNC0(bbb, ccc, ddd, aaa, F3, KK2, in[7],   7);
	FUNC0(aaa, bbb, ccc, ddd, F3, KK2, in[0],  12);
	FUNC0(ddd, aaa, bbb, ccc, F3, KK2, in[13],  8);
	FUNC0(ccc, ddd, aaa, bbb, F3, KK2, in[5],   9);
	FUNC0(bbb, ccc, ddd, aaa, F3, KK2, in[10], 11);
	FUNC0(aaa, bbb, ccc, ddd, F3, KK2, in[14],  7);
	FUNC0(ddd, aaa, bbb, ccc, F3, KK2, in[15],  7);
	FUNC0(ccc, ddd, aaa, bbb, F3, KK2, in[8],  12);
	FUNC0(bbb, ccc, ddd, aaa, F3, KK2, in[12],  7);
	FUNC0(aaa, bbb, ccc, ddd, F3, KK2, in[4],   6);
	FUNC0(ddd, aaa, bbb, ccc, F3, KK2, in[9],  15);
	FUNC0(ccc, ddd, aaa, bbb, F3, KK2, in[1],  13);
	FUNC0(bbb, ccc, ddd, aaa, F3, KK2, in[2],  11);

	/* round 3: right lane */
	FUNC0(aaa, bbb, ccc, ddd, F2, KK3, in[15],  9);
	FUNC0(ddd, aaa, bbb, ccc, F2, KK3, in[5],   7);
	FUNC0(ccc, ddd, aaa, bbb, F2, KK3, in[1],  15);
	FUNC0(bbb, ccc, ddd, aaa, F2, KK3, in[3],  11);
	FUNC0(aaa, bbb, ccc, ddd, F2, KK3, in[7],   8);
	FUNC0(ddd, aaa, bbb, ccc, F2, KK3, in[14],  6);
	FUNC0(ccc, ddd, aaa, bbb, F2, KK3, in[6],   6);
	FUNC0(bbb, ccc, ddd, aaa, F2, KK3, in[9],  14);
	FUNC0(aaa, bbb, ccc, ddd, F2, KK3, in[11], 12);
	FUNC0(ddd, aaa, bbb, ccc, F2, KK3, in[8],  13);
	FUNC0(ccc, ddd, aaa, bbb, F2, KK3, in[12],  5);
	FUNC0(bbb, ccc, ddd, aaa, F2, KK3, in[2],  14);
	FUNC0(aaa, bbb, ccc, ddd, F2, KK3, in[10], 13);
	FUNC0(ddd, aaa, bbb, ccc, F2, KK3, in[0],  13);
	FUNC0(ccc, ddd, aaa, bbb, F2, KK3, in[4],   7);
	FUNC0(bbb, ccc, ddd, aaa, F2, KK3, in[13],  5);

	/* round 4: right lane */
	FUNC0(aaa, bbb, ccc, ddd, F1, KK4, in[8],  15);
	FUNC0(ddd, aaa, bbb, ccc, F1, KK4, in[6],   5);
	FUNC0(ccc, ddd, aaa, bbb, F1, KK4, in[4],   8);
	FUNC0(bbb, ccc, ddd, aaa, F1, KK4, in[1],  11);
	FUNC0(aaa, bbb, ccc, ddd, F1, KK4, in[3],  14);
	FUNC0(ddd, aaa, bbb, ccc, F1, KK4, in[11], 14);
	FUNC0(ccc, ddd, aaa, bbb, F1, KK4, in[15],  6);
	FUNC0(bbb, ccc, ddd, aaa, F1, KK4, in[0],  14);
	FUNC0(aaa, bbb, ccc, ddd, F1, KK4, in[5],   6);
	FUNC0(ddd, aaa, bbb, ccc, F1, KK4, in[12],  9);
	FUNC0(ccc, ddd, aaa, bbb, F1, KK4, in[2],  12);
	FUNC0(bbb, ccc, ddd, aaa, F1, KK4, in[13],  9);
	FUNC0(aaa, bbb, ccc, ddd, F1, KK4, in[9],  12);
	FUNC0(ddd, aaa, bbb, ccc, F1, KK4, in[7],   5);
	FUNC0(ccc, ddd, aaa, bbb, F1, KK4, in[10], 15);
	FUNC0(bbb, ccc, ddd, aaa, F1, KK4, in[14],  8);

	/* combine results */
	ddd += cc + state[1];		/* final result for state[0] */
	state[1] = state[2] + dd + aaa;
	state[2] = state[3] + aa + bbb;
	state[3] = state[0] + bb + ccc;
	state[0] = ddd;
}