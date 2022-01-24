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
typedef  scalar_t__* vec3_t ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

__attribute__((used)) static void FUNC4 (const byte *in, byte *out, int width, int height, qboolean swizzle)
{
	int		i, j;
	int		row;
	int sx = swizzle ? 3 : 0;
	int sa = swizzle ? 0 : 3;

	if ( width == 1 && height == 1 ) {
		return;
	}

	row = width * 4;
	width >>= 1;
	height >>= 1;
	
	for (i=0 ; i<height ; i++, in+=row) {
		for (j=0 ; j<width ; j++, out+=4, in+=8) {
			vec3_t v;

			v[0] =  FUNC2(in[sx      ]);
			v[1] =  FUNC2(in[       1]);
			v[2] =  FUNC2(in[       2]);

			v[0] += FUNC2(in[sx    +4]);
			v[1] += FUNC2(in[       5]);
			v[2] += FUNC2(in[       6]);

			v[0] += FUNC2(in[sx+row  ]);
			v[1] += FUNC2(in[   row+1]);
			v[2] += FUNC2(in[   row+2]);

			v[0] += FUNC2(in[sx+row+4]);
			v[1] += FUNC2(in[   row+5]);
			v[2] += FUNC2(in[   row+6]);

			FUNC3(v);

			//v[0] *= 0.25f;
			//v[1] *= 0.25f;
			//v[2] = 1.0f - v[0] * v[0] - v[1] * v[1];
			//v[2] = sqrt(MAX(v[2], 0.0f));

			out[sx] = FUNC0(v[0]);
			out[1 ] = FUNC0(v[1]);
			out[2 ] = FUNC0(v[2]);
			out[sa] = FUNC1(FUNC1(in[sa], in[sa+4]), FUNC1(in[sa+row], in[sa+row+4]));
		}
	}
}