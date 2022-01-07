
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int occlusionQuery; } ;
struct TYPE_5__ {int (* Printf ) (int ,char*,int) ;} ;
struct TYPE_4__ {int sunFlareQueryIndex; int * sunFlareQuery; int * sunFlareQueryActive; } ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLint ;


 int GL_QUERY_RESULT ;
 int GL_QUERY_RESULT_AVAILABLE ;
 int PRINT_DEVELOPER ;
 TYPE_3__ glRefConfig ;
 int qglGetQueryObjectiv (int ,int ,scalar_t__*) ;
 int qglGetQueryObjectuiv (int ,int ,scalar_t__*) ;
 int qtrue ;
 TYPE_2__ ri ;
 int stub1 (int ,char*,int) ;
 TYPE_1__ tr ;

__attribute__((used)) static qboolean RB_UpdateSunFlareVis(void)
{
 GLuint sampleCount = 0;
 if (!glRefConfig.occlusionQuery)
  return qtrue;

 tr.sunFlareQueryIndex ^= 1;
 if (!tr.sunFlareQueryActive[tr.sunFlareQueryIndex])
  return qtrue;


 if (0)
 {
  int iter;
  for (iter=0 ; ; ++iter)
  {
   GLint available = 0;
   qglGetQueryObjectiv(tr.sunFlareQuery[tr.sunFlareQueryIndex], GL_QUERY_RESULT_AVAILABLE, &available);
   if (available)
    break;
  }

  ri.Printf(PRINT_DEVELOPER, "Waited %d iterations\n", iter);
 }

 qglGetQueryObjectuiv(tr.sunFlareQuery[tr.sunFlareQueryIndex], GL_QUERY_RESULT, &sampleCount);
 return sampleCount > 0;
}
