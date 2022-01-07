
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int glconfig_t ;
struct TYPE_2__ {int viewCluster; int registered; } ;


 int RE_ClearScene () ;
 int R_ClearFlares () ;
 int R_Init () ;
 int R_IssuePendingRenderCommands () ;
 int glConfig ;
 int qtrue ;
 TYPE_1__ tr ;

void RE_BeginRegistration( glconfig_t *glconfigOut ) {

 R_Init();

 *glconfigOut = glConfig;

 R_IssuePendingRenderCommands();

 tr.viewCluster = -1;
 R_ClearFlares();
 RE_ClearScene();

 tr.registered = qtrue;
}
