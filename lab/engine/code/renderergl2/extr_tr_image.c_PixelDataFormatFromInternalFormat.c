
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;






 int GL_RGBA ;

__attribute__((used)) static GLenum PixelDataFormatFromInternalFormat(GLenum internalFormat)
{
 switch (internalFormat)
 {
  case 131:
  case 130:
  case 129:
  case 128:
   return 131;
  default:
   return GL_RGBA;
   break;
 }
}
