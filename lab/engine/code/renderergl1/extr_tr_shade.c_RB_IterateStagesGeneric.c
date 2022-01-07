
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_6__* bundle; int stateBits; } ;
typedef TYPE_2__ shaderStage_t ;
struct TYPE_11__ {int * texcoords; int colors; } ;
struct TYPE_13__ {int indexes; int numIndexes; TYPE_1__ svars; } ;
typedef TYPE_3__ shaderCommands_t ;
struct TYPE_16__ {scalar_t__* image; scalar_t__ isLightmap; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {TYPE_2__** xstages; } ;


 int ComputeColors (TYPE_2__*) ;
 int ComputeTexCoords (TYPE_2__*) ;
 int DrawMultitextured (TYPE_3__*,int) ;
 int GL_COLOR_ARRAY ;
 int GL_FLOAT ;
 int GL_State (int ) ;
 int GL_UNSIGNED_BYTE ;
 int MAX_SHADER_STAGES ;
 int R_BindAnimatedImage (TYPE_6__*) ;
 int R_DrawElements (int ,int ) ;
 int qglColorPointer (int,int ,int ,int ) ;
 int qglEnableClientState (int ) ;
 int qglTexCoordPointer (int,int ,int ,int ) ;
 TYPE_5__* r_lightmap ;
 int setArraysOnce ;
 TYPE_4__ tess ;

__attribute__((used)) static void RB_IterateStagesGeneric( shaderCommands_t *input )
{
 int stage;

 for ( stage = 0; stage < MAX_SHADER_STAGES; stage++ )
 {
  shaderStage_t *pStage = tess.xstages[stage];

  if ( !pStage )
  {
   break;
  }

  ComputeColors( pStage );
  ComputeTexCoords( pStage );

  if ( !setArraysOnce )
  {
   qglEnableClientState( GL_COLOR_ARRAY );
   qglColorPointer( 4, GL_UNSIGNED_BYTE, 0, input->svars.colors );
  }




  if ( pStage->bundle[1].image[0] != 0 )
  {
   DrawMultitextured( input, stage );
  }
  else
  {
   if ( !setArraysOnce )
   {
    qglTexCoordPointer( 2, GL_FLOAT, 0, input->svars.texcoords[0] );
   }




   R_BindAnimatedImage( &pStage->bundle[0] );

   GL_State( pStage->stateBits );




   R_DrawElements( input->numIndexes, input->indexes );
  }

  if ( r_lightmap->integer && ( pStage->bundle[0].isLightmap || pStage->bundle[1].isLightmap ) )
  {
   break;
  }
 }
}
