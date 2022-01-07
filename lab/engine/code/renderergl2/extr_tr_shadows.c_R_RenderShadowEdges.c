
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t facing; int i2; } ;
struct TYPE_3__ {int numIndexes; int* indexes; int numVertexes; int * xyz; } ;


 int GL_TRIANGLE_STRIP ;
 TYPE_2__** edgeDefs ;
 int * facing ;
 int* numEdgeDefs ;
 int qglBegin (int ) ;
 int qglEnd () ;
 int qglVertex3fv (int ) ;
 int * shadowXyz ;
 TYPE_1__ tess ;

void R_RenderShadowEdges( void ) {
}
