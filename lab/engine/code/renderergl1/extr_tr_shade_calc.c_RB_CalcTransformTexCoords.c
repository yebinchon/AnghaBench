
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float** matrix; float* translate; } ;
typedef TYPE_1__ texModInfo_t ;
struct TYPE_5__ {int numVertexes; } ;


 TYPE_2__ tess ;

void RB_CalcTransformTexCoords( const texModInfo_t *tmi, float *st )
{
 int i;

 for ( i = 0; i < tess.numVertexes; i++, st += 2 )
 {
  float s = st[0];
  float t = st[1];

  st[0] = s * tmi->matrix[0][0] + t * tmi->matrix[1][0] + tmi->translate[0];
  st[1] = s * tmi->matrix[0][1] + t * tmi->matrix[1][1] + tmi->translate[1];
 }
}
