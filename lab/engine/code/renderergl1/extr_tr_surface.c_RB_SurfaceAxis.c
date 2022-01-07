
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int whiteImage; } ;


 int GLS_DEFAULT ;
 int GL_Bind (int ) ;
 int GL_LINES ;
 int GL_State (int ) ;
 int qglBegin (int ) ;
 int qglColor3f (int,int,int) ;
 int qglEnd () ;
 int qglLineWidth (int) ;
 int qglVertex3f (int,int,int) ;
 TYPE_1__ tr ;

__attribute__((used)) static void RB_SurfaceAxis( void ) {
 GL_Bind( tr.whiteImage );
 GL_State( GLS_DEFAULT );
 qglLineWidth( 3 );
 qglBegin( GL_LINES );
 qglColor3f( 1,0,0 );
 qglVertex3f( 0,0,0 );
 qglVertex3f( 16,0,0 );
 qglColor3f( 0,1,0 );
 qglVertex3f( 0,0,0 );
 qglVertex3f( 0,16,0 );
 qglColor3f( 0,0,1 );
 qglVertex3f( 0,0,0 );
 qglVertex3f( 0,0,16 );
 qglEnd();
 qglLineWidth( 1 );
}
