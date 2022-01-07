
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* currentEntity; } ;
struct TYPE_7__ {int numVertexes; } ;
struct TYPE_5__ {scalar_t__ shaderRGBA; } ;
struct TYPE_6__ {TYPE_1__ e; } ;


 TYPE_4__ backEnd ;
 TYPE_3__ tess ;

void RB_CalcColorFromEntity( unsigned char *dstColors )
{
 int i;
 int *pColors = ( int * ) dstColors;
 int c;

 if ( !backEnd.currentEntity )
  return;

 c = * ( int * ) backEnd.currentEntity->e.shaderRGBA;

 for ( i = 0; i < tess.numVertexes; i++, pColors++ )
 {
  *pColors = c;
 }
}
