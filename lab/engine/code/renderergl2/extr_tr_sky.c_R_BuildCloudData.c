
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cloudHeight; } ;
struct TYPE_8__ {TYPE_1__ sky; int isSky; } ;
typedef TYPE_2__ shader_t ;
struct TYPE_9__ {TYPE_2__* shader; } ;
typedef TYPE_3__ shaderCommands_t ;
struct TYPE_10__ {int * xstages; scalar_t__ firstIndex; scalar_t__ numVertexes; scalar_t__ numIndexes; } ;


 int FillCloudBox (TYPE_2__*,int) ;
 int MAX_SHADER_STAGES ;
 int assert (int ) ;
 double sky_max ;
 double sky_min ;
 TYPE_4__ tess ;

void R_BuildCloudData( shaderCommands_t *input )
{
 int i;
 shader_t *shader;

 shader = input->shader;

 assert( shader->isSky );

 sky_min = 1.0 / 256.0f;
 sky_max = 255.0 / 256.0f;


 tess.numIndexes = 0;
 tess.numVertexes = 0;
 tess.firstIndex = 0;

 if ( shader->sky.cloudHeight )
 {
  for ( i = 0; i < MAX_SHADER_STAGES; i++ )
  {
   if ( !tess.xstages[i] ) {
    break;
   }
   FillCloudBox( shader, i );
  }
 }
}
