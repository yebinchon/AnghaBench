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
typedef  void* byte ;

/* Variables and functions */
 void* FUNC0 (float) ; 
 float FUNC1 (void*) ; 
 scalar_t__ FUNC2 (float) ; 

__attribute__((used)) static void FUNC3(const byte *in, byte *out, int width, int height)
{
	int x, y;

	for (y = 0; y < height; y++)
	{
		const byte *inbyte  = in  + y * width * 4;
		byte       *outbyte = out + y * width * 4;

		for (x = 0; x < width; x++)
		{
			byte nx, ny, nz, h;
			float fnx, fny, fll, fnz;

			nx = *inbyte++;
			ny = *inbyte++;
			inbyte++;
			h  = *inbyte++;

			fnx = FUNC1(nx);
			fny = FUNC1(ny);
			fll = 1.0f - fnx * fnx - fny * fny;
			if (fll >= 0.0f)
				fnz = (float)FUNC2(fll);
			else
				fnz = 0.0f;

			nz = FUNC0(fnz);

			*outbyte++ = nx;
			*outbyte++ = ny;
			*outbyte++ = nz;
			*outbyte++ = h;
		}
	}
}