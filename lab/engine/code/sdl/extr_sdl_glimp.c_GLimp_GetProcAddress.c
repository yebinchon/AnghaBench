
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* SDL_GL_GetProcAddress (char const*) ;

void* GLimp_GetProcAddress( const char *func )
{
 return SDL_GL_GetProcAddress(func);
}
