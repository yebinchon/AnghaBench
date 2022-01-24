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

/* Variables and functions */
 int FUNC0 (int,int,int,int) ; 
 int FUNC1 (int,int,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(u32 *w, u32 *wt, u32 *m)
{
	u32 ss1;
	u32 ss2;
	u32 tt1;
	u32 tt2;
	u32 a, b, c, d, e, f, g, h;
	int i;

	a = m[0];
	b = m[1];
	c = m[2];
	d = m[3];
	e = m[4];
	f = m[5];
	g = m[6];
	h = m[7];

	for (i = 0; i <= 63; i++) {

		ss1 = FUNC3((FUNC3(a, 12) + e + FUNC3(FUNC4(i), i & 31)), 7);

		ss2 = ss1 ^ FUNC3(a, 12);

		tt1 = FUNC0(i, a, b, c) + d + ss2 + *wt;
		wt++;

		tt2 = FUNC1(i, e, f, g) + h + ss1 + *w;
		w++;

		d = c;
		c = FUNC3(b, 9);
		b = a;
		a = tt1;
		h = g;
		g = FUNC3(f, 19);
		f = e;
		e = FUNC2(tt2);
	}

	m[0] = a ^ m[0];
	m[1] = b ^ m[1];
	m[2] = c ^ m[2];
	m[3] = d ^ m[3];
	m[4] = e ^ m[4];
	m[5] = f ^ m[5];
	m[6] = g ^ m[6];
	m[7] = h ^ m[7];

	a = b = c = d = e = f = g = h = ss1 = ss2 = tt1 = tt2 = 0;
}