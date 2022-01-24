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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(u64 *subkey, u64 *subRL, int max)
{
	u64 kw4, tt;
	u32 dw, tl, tr;

	/* absorb kw2 to other subkeys */
	/* round 2 */
	subRL[3] ^= subRL[1];
	/* round 4 */
	subRL[5] ^= subRL[1];
	/* round 6 */
	subRL[7] ^= subRL[1];

	subRL[1] ^= (subRL[1] & ~subRL[9]) << 32;
	/* modified for FLinv(kl2) */
	dw = (subRL[1] & subRL[9]) >> 32;
	subRL[1] ^= FUNC1(dw, 1);

	/* round 8 */
	subRL[11] ^= subRL[1];
	/* round 10 */
	subRL[13] ^= subRL[1];
	/* round 12 */
	subRL[15] ^= subRL[1];

	subRL[1] ^= (subRL[1] & ~subRL[17]) << 32;
	/* modified for FLinv(kl4) */
	dw = (subRL[1] & subRL[17]) >> 32;
	subRL[1] ^= FUNC1(dw, 1);

	/* round 14 */
	subRL[19] ^= subRL[1];
	/* round 16 */
	subRL[21] ^= subRL[1];
	/* round 18 */
	subRL[23] ^= subRL[1];

	if (max == 24) {
		/* kw3 */
		subRL[24] ^= subRL[1];

		/* absorb kw4 to other subkeys */
		kw4 = subRL[25];
	} else {
		subRL[1] ^= (subRL[1] & ~subRL[25]) << 32;
		/* modified for FLinv(kl6) */
		dw = (subRL[1] & subRL[25]) >> 32;
		subRL[1] ^= FUNC1(dw, 1);

		/* round 20 */
		subRL[27] ^= subRL[1];
		/* round 22 */
		subRL[29] ^= subRL[1];
		/* round 24 */
		subRL[31] ^= subRL[1];
		/* kw3 */
		subRL[32] ^= subRL[1];

		/* absorb kw4 to other subkeys */
		kw4 = subRL[33];
		/* round 23 */
		subRL[30] ^= kw4;
		/* round 21 */
		subRL[28] ^= kw4;
		/* round 19 */
		subRL[26] ^= kw4;

		kw4 ^= (kw4 & ~subRL[24]) << 32;
		/* modified for FL(kl5) */
		dw = (kw4 & subRL[24]) >> 32;
		kw4 ^= FUNC1(dw, 1);
	}

	/* round 17 */
	subRL[22] ^= kw4;
	/* round 15 */
	subRL[20] ^= kw4;
	/* round 13 */
	subRL[18] ^= kw4;

	kw4 ^= (kw4 & ~subRL[16]) << 32;
	/* modified for FL(kl3) */
	dw = (kw4 & subRL[16]) >> 32;
	kw4 ^= FUNC1(dw, 1);

	/* round 11 */
	subRL[14] ^= kw4;
	/* round 9 */
	subRL[12] ^= kw4;
	/* round 7 */
	subRL[10] ^= kw4;

	kw4 ^= (kw4 & ~subRL[8]) << 32;
	/* modified for FL(kl1) */
	dw = (kw4 & subRL[8]) >> 32;
	kw4 ^= FUNC1(dw, 1);

	/* round 5 */
	subRL[6] ^= kw4;
	/* round 3 */
	subRL[4] ^= kw4;
	/* round 1 */
	subRL[2] ^= kw4;
	/* kw1 */
	subRL[0] ^= kw4;

	/* key XOR is end of F-function */
	FUNC0(0, subRL[0] ^ subRL[2]);			/* kw1 */
	FUNC0(2, subRL[3]);				/* round 1 */
	FUNC0(3, subRL[2] ^ subRL[4]);			/* round 2 */
	FUNC0(4, subRL[3] ^ subRL[5]);			/* round 3 */
	FUNC0(5, subRL[4] ^ subRL[6]);			/* round 4 */
	FUNC0(6, subRL[5] ^ subRL[7]);			/* round 5 */

	tl = (subRL[10] >> 32) ^ (subRL[10] & ~subRL[8]);
	dw = tl & (subRL[8] >> 32);				/* FL(kl1) */
	tr = subRL[10] ^ FUNC1(dw, 1);
	tt = (tr | ((u64)tl << 32));

	FUNC0(7, subRL[6] ^ tt);			/* round 6 */
	FUNC0(8, subRL[8]);				/* FL(kl1) */
	FUNC0(9, subRL[9]);				/* FLinv(kl2) */

	tl = (subRL[7] >> 32) ^ (subRL[7] & ~subRL[9]);
	dw = tl & (subRL[9] >> 32);				/* FLinv(kl2) */
	tr = subRL[7] ^ FUNC1(dw, 1);
	tt = (tr | ((u64)tl << 32));

	FUNC0(10, subRL[11] ^ tt);			/* round 7 */
	FUNC0(11, subRL[10] ^ subRL[12]);		/* round 8 */
	FUNC0(12, subRL[11] ^ subRL[13]);		/* round 9 */
	FUNC0(13, subRL[12] ^ subRL[14]);		/* round 10 */
	FUNC0(14, subRL[13] ^ subRL[15]);		/* round 11 */

	tl = (subRL[18] >> 32) ^ (subRL[18] & ~subRL[16]);
	dw = tl & (subRL[16] >> 32);				/* FL(kl3) */
	tr = subRL[18] ^ FUNC1(dw, 1);
	tt = (tr | ((u64)tl << 32));

	FUNC0(15, subRL[14] ^ tt);			/* round 12 */
	FUNC0(16, subRL[16]);				/* FL(kl3) */
	FUNC0(17, subRL[17]);				/* FLinv(kl4) */

	tl = (subRL[15] >> 32) ^ (subRL[15] & ~subRL[17]);
	dw = tl & (subRL[17] >> 32);				/* FLinv(kl4) */
	tr = subRL[15] ^ FUNC1(dw, 1);
	tt = (tr | ((u64)tl << 32));

	FUNC0(18, subRL[19] ^ tt);			/* round 13 */
	FUNC0(19, subRL[18] ^ subRL[20]);		/* round 14 */
	FUNC0(20, subRL[19] ^ subRL[21]);		/* round 15 */
	FUNC0(21, subRL[20] ^ subRL[22]);		/* round 16 */
	FUNC0(22, subRL[21] ^ subRL[23]);		/* round 17 */

	if (max == 24) {
		FUNC0(23, subRL[22]);			/* round 18 */
		FUNC0(24, subRL[24] ^ subRL[23]);	/* kw3 */
	} else {
		tl = (subRL[26] >> 32) ^ (subRL[26] & ~subRL[24]);
		dw = tl & (subRL[24] >> 32);			/* FL(kl5) */
		tr = subRL[26] ^ FUNC1(dw, 1);
		tt = (tr | ((u64)tl << 32));

		FUNC0(23, subRL[22] ^ tt);		/* round 18 */
		FUNC0(24, subRL[24]);			/* FL(kl5) */
		FUNC0(25, subRL[25]);			/* FLinv(kl6) */

		tl = (subRL[23] >> 32) ^ (subRL[23] & ~subRL[25]);
		dw = tl & (subRL[25] >> 32);			/* FLinv(kl6) */
		tr = subRL[23] ^ FUNC1(dw, 1);
		tt = (tr | ((u64)tl << 32));

		FUNC0(26, subRL[27] ^ tt);		/* round 19 */
		FUNC0(27, subRL[26] ^ subRL[28]);	/* round 20 */
		FUNC0(28, subRL[27] ^ subRL[29]);	/* round 21 */
		FUNC0(29, subRL[28] ^ subRL[30]);	/* round 22 */
		FUNC0(30, subRL[29] ^ subRL[31]);	/* round 23 */
		FUNC0(31, subRL[30]);			/* round 24 */
		FUNC0(32, subRL[32] ^ subRL[31]);	/* kw3 */
	}
}