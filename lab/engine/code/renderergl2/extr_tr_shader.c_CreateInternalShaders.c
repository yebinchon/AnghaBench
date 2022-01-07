
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sort; int name; } ;
struct TYPE_7__ {int stateBits; int active; TYPE_1__* bundle; } ;
struct TYPE_6__ {void* shadowShader; void* defaultShader; int defaultImage; scalar_t__ numShaders; } ;
struct TYPE_5__ {int * image; } ;


 void* FinishShader () ;
 int GLS_DEFAULT ;
 int InitShader (char*,int ) ;
 int LIGHTMAP_NONE ;
 int Q_strncpyz (int ,char*,int) ;
 int SS_STENCIL_SHADOW ;
 int qtrue ;
 TYPE_4__ shader ;
 TYPE_3__* stages ;
 TYPE_2__ tr ;

__attribute__((used)) static void CreateInternalShaders( void ) {
 tr.numShaders = 0;


 InitShader( "<default>", LIGHTMAP_NONE );
 stages[0].bundle[0].image[0] = tr.defaultImage;
 stages[0].active = qtrue;
 stages[0].stateBits = GLS_DEFAULT;
 tr.defaultShader = FinishShader();


 Q_strncpyz( shader.name, "<stencil shadow>", sizeof( shader.name ) );
 shader.sort = SS_STENCIL_SHADOW;
 tr.shadowShader = FinishShader();
}
