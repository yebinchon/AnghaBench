
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numVertexes; } ;


 TYPE_1__ tess ;

void RB_CalcScaleTexCoords( const float scale[2], float *st )
{
 int i;

 for ( i = 0; i < tess.numVertexes; i++, st += 2 )
 {
  st[0] *= scale[0];
  st[1] *= scale[1];
 }
}
