
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int glconfig_t ;
struct TYPE_2__ {int* visClusters; int registered; scalar_t__ visIndex; } ;


 int MAX_VISCOUNTS ;
 int RE_ClearScene () ;
 int R_ClearFlares () ;
 int R_Init () ;
 int R_IssuePendingRenderCommands () ;
 int glConfig ;
 int qtrue ;
 TYPE_1__ tr ;

void RE_BeginRegistration( glconfig_t *glconfigOut ) {
 int i;

 R_Init();

 *glconfigOut = glConfig;

 R_IssuePendingRenderCommands();

 tr.visIndex = 0;

 for(i = 0; i < MAX_VISCOUNTS; i++) {
  tr.visClusters[i] = -2;
 }

 R_ClearFlares();
 RE_ClearScene();

 tr.registered = qtrue;
}
