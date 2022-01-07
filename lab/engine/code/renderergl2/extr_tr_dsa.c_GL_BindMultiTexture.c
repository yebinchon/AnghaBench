
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t* textures; } ;
typedef size_t GLuint ;
typedef scalar_t__ GLenum ;


 scalar_t__ GL_TEXTURE0 ;
 scalar_t__ GL_TEXTURE_CUBE_MAP ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_NEGATIVE_Z ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_POSITIVE_X ;
 TYPE_1__ glDsaState ;
 int qglBindMultiTextureEXT (scalar_t__,scalar_t__,size_t) ;

int GL_BindMultiTexture(GLenum texunit, GLenum target, GLuint texture)
{
 GLuint tmu = texunit - GL_TEXTURE0;

 if (glDsaState.textures[tmu] == texture)
  return 0;

 if (target >= GL_TEXTURE_CUBE_MAP_POSITIVE_X && target <= GL_TEXTURE_CUBE_MAP_NEGATIVE_Z)
  target = GL_TEXTURE_CUBE_MAP;

 qglBindMultiTextureEXT(texunit, target, texture);
 glDsaState.textures[tmu] = texture;
 return 1;
}
