
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ glslShaderGroup; int glslShaderIndex; int rgbGen; int alphaGen; TYPE_1__* bundle; int active; } ;
typedef TYPE_2__ shaderStage_t ;
struct TYPE_11__ {int deformation; } ;
typedef TYPE_3__ deformStage_t ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int vertexAttribs; int numDeforms; TYPE_3__* deforms; scalar_t__ defaultShader; scalar_t__ isPortal; } ;
struct TYPE_12__ {scalar_t__ lightallShader; } ;
struct TYPE_9__ {scalar_t__* image; int tcGen; } ;





 int ATTR_COLOR ;
 int ATTR_LIGHTCOORD ;
 int ATTR_LIGHTDIRECTION ;
 int ATTR_NORMAL ;
 int ATTR_POSITION ;
 int ATTR_TANGENT ;
 int ATTR_TEXCOORD ;
 int LIGHTDEF_LIGHTTYPE_MASK ;


 int MAX_SHADER_STAGES ;
 int NUM_TEXTURE_BUNDLES ;



 TYPE_8__* r_normalMapping ;
 TYPE_7__* r_specularMapping ;
 TYPE_6__ shader ;
 TYPE_2__* stages ;
 TYPE_4__ tr ;

__attribute__((used)) static void ComputeVertexAttribs(void)
{
 int i, stage;


 shader.vertexAttribs = ATTR_POSITION | ATTR_NORMAL;


 if (shader.isPortal)
 {
  shader.vertexAttribs |= ATTR_NORMAL;
 }

 if (shader.defaultShader)
 {
  shader.vertexAttribs |= ATTR_TEXCOORD;
  return;
 }

 if(shader.numDeforms)
 {
  for ( i = 0; i < shader.numDeforms; i++)
  {
   deformStage_t *ds = &shader.deforms[i];

   switch (ds->deformation)
   {
    case 146:
     shader.vertexAttribs |= ATTR_NORMAL | ATTR_TEXCOORD;
     break;

    case 148:
     shader.vertexAttribs |= ATTR_NORMAL | ATTR_COLOR;
     break;

    case 133:
    case 143:
    case 141:
    case 140:
    case 139:
    case 138:
    case 137:
    case 136:
    case 135:
    case 134:
     shader.vertexAttribs |= ATTR_NORMAL;
     break;

    default:
    case 144:
    case 145:
    case 142:
    case 147:
     break;
   }
  }
 }

 for ( stage = 0; stage < MAX_SHADER_STAGES; stage++ )
 {
  shaderStage_t *pStage = &stages[stage];

  if ( !pStage->active )
  {
   break;
  }

  if (pStage->glslShaderGroup == tr.lightallShader)
  {
   shader.vertexAttribs |= ATTR_NORMAL;

   if ((pStage->glslShaderIndex & LIGHTDEF_LIGHTTYPE_MASK) && !(r_normalMapping->integer == 0 && r_specularMapping->integer == 0))
   {
    shader.vertexAttribs |= ATTR_TANGENT;
   }

   switch (pStage->glslShaderIndex & LIGHTDEF_LIGHTTYPE_MASK)
   {
    case 132:
    case 131:
     shader.vertexAttribs |= ATTR_LIGHTDIRECTION;
     break;
    default:
     break;
   }
  }

  for (i = 0; i < NUM_TEXTURE_BUNDLES; i++)
  {
   if ( pStage->bundle[i].image[0] == 0 )
   {
    continue;
   }

   switch(pStage->bundle[i].tcGen)
   {
    case 128:
     shader.vertexAttribs |= ATTR_TEXCOORD;
     break;
    case 129:
     shader.vertexAttribs |= ATTR_LIGHTCOORD;
     break;
    case 130:
     shader.vertexAttribs |= ATTR_NORMAL;
     break;

    default:
     break;
   }
  }

  switch(pStage->rgbGen)
  {
   case 154:
   case 150:
   case 153:
   case 149:
   case 151:
    shader.vertexAttribs |= ATTR_COLOR;
    break;

   case 152:
    shader.vertexAttribs |= ATTR_NORMAL;
    break;

   default:
    break;
  }

  switch(pStage->alphaGen)
  {
   case 157:
    shader.vertexAttribs |= ATTR_NORMAL;
    break;

   case 155:
   case 156:
    shader.vertexAttribs |= ATTR_COLOR;
    break;

   default:
    break;
  }
 }
}
