
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vao_t ;
struct TYPE_4__ {int * currentVao; } ;
struct TYPE_3__ {int useInternalVao; int * vao; int cubemapIndex; int fogNum; int shader; } ;


 int RB_BeginSurface (int ,int ,int ) ;
 int RB_EndSurface () ;
 int R_BindVao (int *) ;
 TYPE_2__ glState ;
 int qfalse ;
 TYPE_1__ tess ;

void RB_CheckVao(vao_t *vao)
{
 if (vao != glState.currentVao)
 {
  RB_EndSurface();
  RB_BeginSurface(tess.shader, tess.fogNum, tess.cubemapIndex);

  R_BindVao(vao);
 }

 if (vao != tess.vao)
  tess.useInternalVao = qfalse;
}
