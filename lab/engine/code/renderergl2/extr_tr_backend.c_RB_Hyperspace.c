
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time; } ;
struct TYPE_4__ {scalar_t__ isHyperspace; TYPE_1__ refdef; } ;


 int GL_COLOR_BUFFER_BIT ;
 TYPE_2__ backEnd ;
 int qglClear (int ) ;
 int qglClearColor (float,float,float,float) ;
 scalar_t__ qtrue ;

__attribute__((used)) static void RB_Hyperspace( void ) {
 float c;

 if ( !backEnd.isHyperspace ) {

 }

 c = ( backEnd.refdef.time & 255 ) / 255.0f;
 qglClearColor( c, c, c, 1 );
 qglClear( GL_COLOR_BUFFER_BIT );
 qglClearColor(0.0f, 0.0f, 0.0f, 1.0f);

 backEnd.isHyperspace = qtrue;
}
