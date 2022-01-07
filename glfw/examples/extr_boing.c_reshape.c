
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float member_0; float member_1; float member_2; } ;
typedef TYPE_1__ vec3 ;
typedef scalar_t__ mat4x4 ;
typedef int GLsizei ;
typedef int GLfloat ;
typedef int GLFWwindow ;


 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int RADIUS ;
 float VIEW_SCENE_DIST ;
 scalar_t__ atan2 (int ,float) ;
 int glLoadMatrixf (int const*) ;
 int glMatrixMode (int ) ;
 int glViewport (int ,int ,int ,int ) ;
 int mat4x4_look_at (scalar_t__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int mat4x4_perspective (scalar_t__,float,float,float,float) ;

void reshape( GLFWwindow* window, int w, int h )
{
   mat4x4 projection, view;

   glViewport( 0, 0, (GLsizei)w, (GLsizei)h );

   glMatrixMode( GL_PROJECTION );
   mat4x4_perspective( projection,
                       2.f * (float) atan2( RADIUS, 200.f ),
                       (float)w / (float)h,
                       1.f, VIEW_SCENE_DIST );
   glLoadMatrixf((const GLfloat*) projection);

   glMatrixMode( GL_MODELVIEW );
   {
      vec3 eye = { 0.f, 0.f, VIEW_SCENE_DIST };
      vec3 center = { 0.f, 0.f, 0.f };
      vec3 up = { 0.f, -1.f, 0.f };
      mat4x4_look_at( view, eye, center, up );
   }
   glLoadMatrixf((const GLfloat*) view);
}
