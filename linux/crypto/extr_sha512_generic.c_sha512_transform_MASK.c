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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__* sha512_K ; 

__attribute__((used)) static void
FUNC6(u64 *state, const u8 *input)
{
	u64 a, b, c, d, e, f, g, h, t1, t2;

	int i;
	u64 W[16];

	/* load the state into our registers */
	a=state[0];   b=state[1];   c=state[2];   d=state[3];
	e=state[4];   f=state[5];   g=state[6];   h=state[7];

	/* now iterate */
	for (i=0; i<80; i+=8) {
		if (!(i & 8)) {
			int j;

			if (i < 16) {
				/* load the input */
				for (j = 0; j < 16; j++)
					FUNC2(i + j, W, input);
			} else {
				for (j = 0; j < 16; j++) {
					FUNC0(i + j, W);
				}
			}
		}

		t1 = h + FUNC5(e) + FUNC1(e,f,g) + sha512_K[i  ] + W[(i & 15)];
		t2 = FUNC4(a) + FUNC3(a,b,c);    d+=t1;    h=t1+t2;
		t1 = g + FUNC5(d) + FUNC1(d,e,f) + sha512_K[i+1] + W[(i & 15) + 1];
		t2 = FUNC4(h) + FUNC3(h,a,b);    c+=t1;    g=t1+t2;
		t1 = f + FUNC5(c) + FUNC1(c,d,e) + sha512_K[i+2] + W[(i & 15) + 2];
		t2 = FUNC4(g) + FUNC3(g,h,a);    b+=t1;    f=t1+t2;
		t1 = e + FUNC5(b) + FUNC1(b,c,d) + sha512_K[i+3] + W[(i & 15) + 3];
		t2 = FUNC4(f) + FUNC3(f,g,h);    a+=t1;    e=t1+t2;
		t1 = d + FUNC5(a) + FUNC1(a,b,c) + sha512_K[i+4] + W[(i & 15) + 4];
		t2 = FUNC4(e) + FUNC3(e,f,g);    h+=t1;    d=t1+t2;
		t1 = c + FUNC5(h) + FUNC1(h,a,b) + sha512_K[i+5] + W[(i & 15) + 5];
		t2 = FUNC4(d) + FUNC3(d,e,f);    g+=t1;    c=t1+t2;
		t1 = b + FUNC5(g) + FUNC1(g,h,a) + sha512_K[i+6] + W[(i & 15) + 6];
		t2 = FUNC4(c) + FUNC3(c,d,e);    f+=t1;    b=t1+t2;
		t1 = a + FUNC5(f) + FUNC1(f,g,h) + sha512_K[i+7] + W[(i & 15) + 7];
		t2 = FUNC4(b) + FUNC3(b,c,d);    e+=t1;    a=t1+t2;
	}

	state[0] += a; state[1] += b; state[2] += c; state[3] += d;
	state[4] += e; state[5] += f; state[6] += g; state[7] += h;

	/* erase our data */
	a = b = c = d = e = f = g = h = t1 = t2 = 0;
}