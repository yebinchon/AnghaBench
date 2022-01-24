#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_2__ {int integer; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (scalar_t__,int) ; 
 int WORKBLOCK_BORDER ; 
 int WORKBLOCK_REALSIZE ; 
 scalar_t__ WORKBLOCK_SIZE ; 
 TYPE_1__* r_imageUpsampleType ; 

__attribute__((used)) static void FUNC7(byte *data, int width, int height, qboolean clampToEdge, qboolean normalized)
{
	byte workdata[WORKBLOCK_REALSIZE * WORKBLOCK_REALSIZE * 4];
	byte outdata[WORKBLOCK_REALSIZE * WORKBLOCK_REALSIZE * 4];
	byte *inbyte, *outbyte;
	int x, y;
	int srcx, srcy;

	FUNC5(data, width, height);

	for (y = 0; y < height; y += WORKBLOCK_SIZE)
	{
		for (x = 0; x < width; x += WORKBLOCK_SIZE)
		{
			int x2, y2;
			int workwidth, workheight, fullworkwidth, fullworkheight;

			workwidth =  FUNC6(WORKBLOCK_SIZE, width  - x);
			workheight = FUNC6(WORKBLOCK_SIZE, height - y);

			fullworkwidth =  workwidth  + WORKBLOCK_BORDER * 2;
			fullworkheight = workheight + WORKBLOCK_BORDER * 2;

			//memset(workdata, 0, WORKBLOCK_REALSIZE * WORKBLOCK_REALSIZE * 4);

			// fill in work block
			for (y2 = 0; y2 < fullworkheight; y2 += 2)
			{
				srcy = y + y2 - WORKBLOCK_BORDER;

				if (clampToEdge)
				{
					srcy = FUNC0(srcy, 0, height - 2);
				}
				else
				{
					srcy = (srcy + height) % height;
				}

				outbyte = workdata + y2   * fullworkwidth * 4;
				inbyte  = data     + srcy * width         * 4;		

				for (x2 = 0; x2 < fullworkwidth; x2 += 2)
				{
					srcx = x + x2 - WORKBLOCK_BORDER;

					if (clampToEdge)
					{
						srcx = FUNC0(srcx, 0, width - 2);
					}
					else
					{
						srcx = (srcx + width) % width;
					}

					FUNC1(outbyte, inbyte + srcx * 4);
					outbyte += 8;
				}
			}

			// submit work block
			FUNC4(workdata, outdata, fullworkwidth, fullworkheight);

			if (!normalized)
			{
				switch (r_imageUpsampleType->integer)
				{
					case 0:
						break;
					case 1:
						FUNC3(workdata, outdata, fullworkwidth, fullworkheight, 0);
						break;
					case 2:
					default:
						FUNC2(workdata, outdata, fullworkwidth, fullworkheight, 0);
						break;
				}
			}
			else
			{
				switch (r_imageUpsampleType->integer)
				{
					case 0:
						break;
					case 1:
						FUNC3(workdata, outdata, fullworkwidth, fullworkheight, 0);
						FUNC3(workdata, outdata, fullworkwidth, fullworkheight, 1);
						break;
					case 2:
					default:
						FUNC2(workdata, outdata, fullworkwidth, fullworkheight, 0);
						FUNC2(workdata, outdata, fullworkwidth, fullworkheight, 1);
						break;
				}
			}

			// copy back work block
			for (y2 = 0; y2 < workheight; y2++)
			{
				inbyte = outdata + ((y2 + WORKBLOCK_BORDER) * fullworkwidth + WORKBLOCK_BORDER) * 4;
				outbyte = data +   ((y + y2)                * width         + x)                * 4;
				for (x2 = 0; x2 < workwidth; x2++)
				{
					FUNC1(outbyte, inbyte);
					outbyte += 4;
					inbyte += 4;
				}
			}
		}
	}
}