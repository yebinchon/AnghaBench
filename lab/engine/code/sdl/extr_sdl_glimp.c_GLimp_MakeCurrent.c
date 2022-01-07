
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SDL_GL_MakeCurrent (int ,int ) ;
 int SDL_GetError () ;
 int SDL_glContext ;
 int SDL_window ;
 int Sys_Error (char*,int ) ;

void GLimp_MakeCurrent( void ) {
 if ( SDL_GL_MakeCurrent( SDL_window, SDL_glContext ) != 0 ) {
  Sys_Error( "GLimp_MakeCurrent - %s", SDL_GetError() );
 }
}
