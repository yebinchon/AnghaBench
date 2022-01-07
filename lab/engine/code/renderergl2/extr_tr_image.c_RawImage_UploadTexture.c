
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
typedef scalar_t__ imgType_t ;
typedef int imgFlags_t ;
typedef int byte ;
struct TYPE_4__ {int swizzleNormalmap; scalar_t__ framebufferObject; } ;
struct TYPE_3__ {scalar_t__ integer; } ;
typedef int GLuint ;
typedef scalar_t__ GLenum ;


 int CalculateMipSize (int,int,scalar_t__) ;
 scalar_t__ GL_COMPRESSED_RG_RGTC2 ;
 scalar_t__ GL_RGBA16 ;
 scalar_t__ GL_RGBA8 ;
 scalar_t__ GL_SRGB8_ALPHA8_EXT ;
 scalar_t__ GL_UNSIGNED_BYTE ;
 scalar_t__ GL_UNSIGNED_SHORT ;
 int IMGFLAG_MIPMAP ;
 scalar_t__ IMGTYPE_NORMAL ;
 scalar_t__ IMGTYPE_NORMALHEIGHT ;
 int MAX (int,int) ;
 scalar_t__ PixelDataFormatFromInternalFormat (scalar_t__) ;
 int R_BlendOverTexture (int *,int,int ) ;
 int R_MipMapNormalHeight (int *,int *,int,int,int ) ;
 int R_MipMapsRGB (int *,int,int) ;
 int RawImage_UploadToRgtc2Texture (int ,int,int,int,int,int,int *) ;
 TYPE_2__ glRefConfig ;
 int * mipBlendColors ;
 int qfalse ;
 int qglCompressedTextureSubImage2DEXT (int ,scalar_t__,int,int,int,int,int,scalar_t__,int,int *) ;
 int qglGenerateTextureMipmapEXT (int ,scalar_t__) ;
 int qglTextureSubImage2DEXT (int ,scalar_t__,int,int,int,int,int,scalar_t__,scalar_t__,int *) ;
 TYPE_1__* r_colorMipLevels ;

__attribute__((used)) static void RawImage_UploadTexture(GLuint texture, byte *data, int x, int y, int width, int height, GLenum target, GLenum picFormat, int numMips, GLenum internalFormat, imgType_t type, imgFlags_t flags, qboolean subtexture )
{
 GLenum dataFormat, dataType;
 qboolean rgtc = internalFormat == GL_COMPRESSED_RG_RGTC2;
 qboolean rgba8 = picFormat == GL_RGBA8 || picFormat == GL_SRGB8_ALPHA8_EXT;
 qboolean rgba = rgba8 || picFormat == GL_RGBA16;
 qboolean mipmap = !!(flags & IMGFLAG_MIPMAP);
 int size, miplevel;
 qboolean lastMip = qfalse;

 dataFormat = PixelDataFormatFromInternalFormat(internalFormat);
 dataType = picFormat == GL_RGBA16 ? GL_UNSIGNED_SHORT : GL_UNSIGNED_BYTE;

 miplevel = 0;
 do
 {
  lastMip = (width == 1 && height == 1) || !mipmap;
  size = CalculateMipSize(width, height, picFormat);

  if (!rgba)
  {
   qglCompressedTextureSubImage2DEXT(texture, target, miplevel, x, y, width, height, picFormat, size, data);
  }
  else
  {
   if (rgba8 && miplevel != 0 && r_colorMipLevels->integer)
    R_BlendOverTexture((byte *)data, width * height, mipBlendColors[miplevel]);

   if (rgba8 && rgtc)
    RawImage_UploadToRgtc2Texture(texture, miplevel, x, y, width, height, data);
   else
    qglTextureSubImage2DEXT(texture, target, miplevel, x, y, width, height, dataFormat, dataType, data);
  }

  if (!lastMip && numMips < 2)
  {
   if (glRefConfig.framebufferObject)
   {
    qglGenerateTextureMipmapEXT(texture, target);
    break;
   }
   else if (rgba8)
   {
    if (type == IMGTYPE_NORMAL || type == IMGTYPE_NORMALHEIGHT)
     R_MipMapNormalHeight(data, data, width, height, glRefConfig.swizzleNormalmap);
    else
     R_MipMapsRGB(data, width, height);
   }
  }

  x >>= 1;
  y >>= 1;
  width = MAX(1, width >> 1);
  height = MAX(1, height >> 1);
  miplevel++;

  if (numMips > 1)
  {
   data += size;
   numMips--;
  }
 }
 while (!lastMip);
}
