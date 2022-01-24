#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* byte ;
struct TYPE_4__ {scalar_t__ deviceSupportsGamma; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* Hunk_FreeTempMemory ) (void**) ;int /*<<< orphan*/  (* FS_WriteFile ) (char*,void**,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ,int) ; 
 void** FUNC1 (int,int,int,int,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC2 (void**,size_t) ; 
 TYPE_2__ glConfig ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC3 (char*,void**,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 

void FUNC5(int x, int y, int width, int height, char *fileName)
{
	byte *allbuf, *buffer;
	byte *srcptr, *destptr;
	byte *endline, *endmem;
	byte temp;
	
	int linelen, padlen;
	size_t offset = 18, memcount;
		
	allbuf = FUNC1(x, y, width, height, &offset, &padlen);
	buffer = allbuf + offset - 18;
	
	FUNC0 (buffer, 0, 18);
	buffer[2] = 2;		// uncompressed type
	buffer[12] = width & 255;
	buffer[13] = width >> 8;
	buffer[14] = height & 255;
	buffer[15] = height >> 8;
	buffer[16] = 24;	// pixel size

	// swap rgb to bgr and remove padding from line endings
	linelen = width * 3;
	
	srcptr = destptr = allbuf + offset;
	endmem = srcptr + (linelen + padlen) * height;
	
	while(srcptr < endmem)
	{
		endline = srcptr + linelen;

		while(srcptr < endline)
		{
			temp = srcptr[0];
			*destptr++ = srcptr[2];
			*destptr++ = srcptr[1];
			*destptr++ = temp;
			
			srcptr += 3;
		}
		
		// Skip the pad
		srcptr += padlen;
	}

	memcount = linelen * height;

	// gamma correct
	if(glConfig.deviceSupportsGamma)
		FUNC2(allbuf + offset, memcount);

	ri.FS_WriteFile(fileName, buffer, memcount + 18);

	ri.Hunk_FreeTempMemory(allbuf);
}