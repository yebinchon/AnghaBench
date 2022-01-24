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
struct streebog_uint512 {int* qword; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** Ax ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(const struct streebog_uint512 *x,
			  const struct streebog_uint512 *y,
			  struct streebog_uint512 *data)
{
	u64 r0, r1, r2, r3, r4, r5, r6, r7;
	int i;

	r0 = FUNC1(x->qword[0] ^ y->qword[0]);
	r1 = FUNC1(x->qword[1] ^ y->qword[1]);
	r2 = FUNC1(x->qword[2] ^ y->qword[2]);
	r3 = FUNC1(x->qword[3] ^ y->qword[3]);
	r4 = FUNC1(x->qword[4] ^ y->qword[4]);
	r5 = FUNC1(x->qword[5] ^ y->qword[5]);
	r6 = FUNC1(x->qword[6] ^ y->qword[6]);
	r7 = FUNC1(x->qword[7] ^ y->qword[7]);

	for (i = 0; i <= 7; i++) {
		data->qword[i]  = FUNC0(Ax[0][r0 & 0xFF]);
		data->qword[i] ^= FUNC0(Ax[1][r1 & 0xFF]);
		data->qword[i] ^= FUNC0(Ax[2][r2 & 0xFF]);
		data->qword[i] ^= FUNC0(Ax[3][r3 & 0xFF]);
		data->qword[i] ^= FUNC0(Ax[4][r4 & 0xFF]);
		data->qword[i] ^= FUNC0(Ax[5][r5 & 0xFF]);
		data->qword[i] ^= FUNC0(Ax[6][r6 & 0xFF]);
		data->qword[i] ^= FUNC0(Ax[7][r7 & 0xFF]);
		r0 >>= 8;
		r1 >>= 8;
		r2 >>= 8;
		r3 >>= 8;
		r4 >>= 8;
		r5 >>= 8;
		r6 >>= 8;
		r7 >>= 8;
	}
}