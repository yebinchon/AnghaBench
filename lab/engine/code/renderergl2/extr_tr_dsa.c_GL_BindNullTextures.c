
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ texunit; scalar_t__* textures; } ;
struct TYPE_3__ {scalar_t__ directStateAccess; } ;


 scalar_t__ GL_TEXTURE0 ;
 int GL_TEXTURE_2D ;
 int NUM_TEXTURE_BUNDLES ;
 TYPE_2__ glDsaState ;
 TYPE_1__ glRefConfig ;
 int qglActiveTexture (scalar_t__) ;
 int qglBindMultiTextureEXT (scalar_t__,int ,int ) ;
 int qglBindTexture (int ,int ) ;

void GL_BindNullTextures(void)
{
 int i;

 if (glRefConfig.directStateAccess)
 {
  for (i = 0; i < NUM_TEXTURE_BUNDLES; i++)
  {
   qglBindMultiTextureEXT(GL_TEXTURE0 + i, GL_TEXTURE_2D, 0);
   glDsaState.textures[i] = 0;
  }
 }
 else
 {
  for (i = 0; i < NUM_TEXTURE_BUNDLES; i++)
  {
   qglActiveTexture(GL_TEXTURE0 + i);
   qglBindTexture(GL_TEXTURE_2D, 0);
   glDsaState.textures[i] = 0;
  }

  qglActiveTexture(GL_TEXTURE0);
  glDsaState.texunit = GL_TEXTURE0;
 }
}
