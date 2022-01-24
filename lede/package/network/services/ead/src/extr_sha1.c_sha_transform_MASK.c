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
typedef  int uint32_t ;

/* Variables and functions */
 int K1 ; 
 int K2 ; 
 int K3 ; 
 int K4 ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(uint32_t *digest, const unsigned char *in, uint32_t *W)
{
	uint32_t a, b, c, d, e, t, i;

	for (i = 0; i < 16; i++) {
		int ofs = 4 * i;

		/* word load/store may be unaligned here, so use bytes instead */
		W[i] =
			(in[ofs+0] << 24) |
			(in[ofs+1] << 16) |
			(in[ofs+2] << 8) |
			 in[ofs+3];
	}

	for (i = 0; i < 64; i++)
		W[i+16] = FUNC3(W[i+13] ^ W[i+8] ^ W[i+2] ^ W[i], 1);

	a = digest[0];
	b = digest[1];
	c = digest[2];
	d = digest[3];
	e = digest[4];

	for (i = 0; i < 20; i++) {
		t = FUNC0(b, c, d) + K1 + FUNC3(a, 5) + e + W[i];
		e = d; d = c; c = FUNC3(b, 30); b = a; a = t;
	}

	for (; i < 40; i ++) {
		t = FUNC1(b, c, d) + K2 + FUNC3(a, 5) + e + W[i];
		e = d; d = c; c = FUNC3(b, 30); b = a; a = t;
	}

	for (; i < 60; i ++) {
		t = FUNC2(b, c, d) + K3 + FUNC3(a, 5) + e + W[i];
		e = d; d = c; c = FUNC3(b, 30); b = a; a = t;
	}

	for (; i < 80; i ++) {
		t = FUNC1(b, c, d) + K4 + FUNC3(a, 5) + e + W[i];
		e = d; d = c; c = FUNC3(b, 30); b = a; a = t;
	}

	digest[0] += a;
	digest[1] += b;
	digest[2] += c;
	digest[3] += d;
	digest[4] += e;
}