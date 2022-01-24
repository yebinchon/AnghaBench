#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int width; int height; void** encodeBuffer; scalar_t__ motionJpeg; int /*<<< orphan*/  captureBuffer; } ;
typedef  TYPE_1__ videoFrameCommand_t ;
typedef  void* byte ;
struct TYPE_8__ {scalar_t__ deviceSupportsGamma; } ;
struct TYPE_7__ {int /*<<< orphan*/  integer; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* CL_WriteAVIVideoFrame ) (void**,int) ;} ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 int /*<<< orphan*/  AVI_LINE_PADDING ; 
 int /*<<< orphan*/  FUNC0 (void**,char,int) ; 
 int /*<<< orphan*/  GL_PACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_RGB ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 void** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (void**,size_t,int /*<<< orphan*/ ,int,size_t,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (void**,size_t) ; 
 TYPE_4__ glConfig ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 TYPE_3__* r_aviMotionJpegQuality ; 
 TYPE_2__ ri ; 
 int /*<<< orphan*/  FUNC7 (void**,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void**,int) ; 

const void *FUNC9( const void *data )
{
	const videoFrameCommand_t	*cmd;
	byte				*cBuf;
	size_t				memcount, linelen;
	int				padwidth, avipadwidth, padlen, avipadlen;
	GLint packAlign;
	
	cmd = (const videoFrameCommand_t *)data;
	
	FUNC5(GL_PACK_ALIGNMENT, &packAlign);

	linelen = cmd->width * 3;

	// Alignment stuff for glReadPixels
	padwidth = FUNC1(linelen, packAlign);
	padlen = padwidth - linelen;
	// AVI line padding
	avipadwidth = FUNC1(linelen, AVI_LINE_PADDING);
	avipadlen = avipadwidth - linelen;

	cBuf = FUNC2(cmd->captureBuffer, packAlign);
		
	FUNC6(0, 0, cmd->width, cmd->height, GL_RGB,
		GL_UNSIGNED_BYTE, cBuf);

	memcount = padwidth * cmd->height;

	// gamma correct
	if(glConfig.deviceSupportsGamma)
		FUNC4(cBuf, memcount);

	if(cmd->motionJpeg)
	{
		memcount = FUNC3(cmd->encodeBuffer, linelen * cmd->height,
			r_aviMotionJpegQuality->integer,
			cmd->width, cmd->height, cBuf, padlen);
		ri.CL_WriteAVIVideoFrame(cmd->encodeBuffer, memcount);
	}
	else
	{
		byte *lineend, *memend;
		byte *srcptr, *destptr;
	
		srcptr = cBuf;
		destptr = cmd->encodeBuffer;
		memend = srcptr + memcount;
		
		// swap R and B and remove line paddings
		while(srcptr < memend)
		{
			lineend = srcptr + linelen;
			while(srcptr < lineend)
			{
				*destptr++ = srcptr[2];
				*destptr++ = srcptr[1];
				*destptr++ = srcptr[0];
				srcptr += 3;
			}
			
			FUNC0(destptr, '\0', avipadlen);
			destptr += avipadlen;
			
			srcptr += padlen;
		}
		
		ri.CL_WriteAVIVideoFrame(cmd->encodeBuffer, avipadwidth * cmd->height);
	}

	return (const void *)(cmd + 1);	
}