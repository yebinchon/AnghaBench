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
typedef  int qboolean ;
typedef  scalar_t__ imgType_t ;
typedef  int imgFlags_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_4__ {int /*<<< orphan*/  swizzleNormalmap; scalar_t__ framebufferObject; } ;
struct TYPE_3__ {scalar_t__ integer; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int FUNC0 (int,int,scalar_t__) ; 
 scalar_t__ GL_COMPRESSED_RG_RGTC2 ; 
 scalar_t__ GL_RGBA16 ; 
 scalar_t__ GL_RGBA8 ; 
 scalar_t__ GL_SRGB8_ALPHA8_EXT ; 
 scalar_t__ GL_UNSIGNED_BYTE ; 
 scalar_t__ GL_UNSIGNED_SHORT ; 
 int IMGFLAG_MIPMAP ; 
 scalar_t__ IMGTYPE_NORMAL ; 
 scalar_t__ IMGTYPE_NORMALHEIGHT ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 TYPE_2__ glRefConfig ; 
 int /*<<< orphan*/ * mipBlendColors ; 
 int qfalse ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int,int,int,int,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,int,int,int,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* r_colorMipLevels ; 

__attribute__((used)) static void FUNC10(GLuint texture, byte *data, int x, int y, int width, int height, GLenum target, GLenum picFormat, int numMips, GLenum internalFormat, imgType_t type, imgFlags_t flags, qboolean subtexture )
{
	GLenum dataFormat, dataType;
	qboolean rgtc = internalFormat == GL_COMPRESSED_RG_RGTC2;
	qboolean rgba8 = picFormat == GL_RGBA8 || picFormat == GL_SRGB8_ALPHA8_EXT;
	qboolean rgba = rgba8 || picFormat == GL_RGBA16;
	qboolean mipmap = !!(flags & IMGFLAG_MIPMAP);
	int size, miplevel;
	qboolean lastMip = qfalse;

	dataFormat = FUNC2(internalFormat);
	dataType = picFormat == GL_RGBA16 ? GL_UNSIGNED_SHORT : GL_UNSIGNED_BYTE;

	miplevel = 0;
	do
	{
		lastMip = (width == 1 && height == 1) || !mipmap;
		size = FUNC0(width, height, picFormat);

		if (!rgba)
		{
			FUNC7(texture, target, miplevel, x, y, width, height, picFormat, size, data);
		}
		else
		{
			if (rgba8 && miplevel != 0 && r_colorMipLevels->integer)
				FUNC3((byte *)data, width * height, mipBlendColors[miplevel]);

			if (rgba8 && rgtc)
				FUNC6(texture, miplevel, x, y, width, height, data);
			else
				FUNC9(texture, target, miplevel, x, y, width, height, dataFormat, dataType, data);
		}

		if (!lastMip && numMips < 2)
		{
			if (glRefConfig.framebufferObject)
			{
				FUNC8(texture, target);
				break;
			}
			else if (rgba8)
			{
				if (type == IMGTYPE_NORMAL || type == IMGTYPE_NORMALHEIGHT)
					FUNC4(data, data, width, height, glRefConfig.swizzleNormalmap);
				else
					FUNC5(data, width, height);
			}
		}

		x >>= 1;
		y >>= 1;
		width = FUNC1(1, width >> 1);
		height = FUNC1(1, height >> 1);
		miplevel++;

		if (numMips > 1)
		{
			data += size;
			numMips--;
		}
	}
	while (!lastMip);
}