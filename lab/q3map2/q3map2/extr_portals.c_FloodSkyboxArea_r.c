
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ planenum; scalar_t__ area; int skybox; scalar_t__ opaque; struct TYPE_3__** children; } ;
typedef TYPE_1__ node_t ;


 scalar_t__ PLANENUM_LEAF ;
 int qtrue ;
 scalar_t__ skyboxArea ;

void FloodSkyboxArea_r( node_t *node ){
 if ( skyboxArea < 0 ) {
  return;
 }

 if ( node->planenum != PLANENUM_LEAF ) {
  FloodSkyboxArea_r( node->children[ 0 ] );
  FloodSkyboxArea_r( node->children[ 1 ] );
  return;
 }

 if ( node->opaque || node->area != skyboxArea ) {
  return;
 }

 node->skybox = qtrue;
}
