
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; scalar_t__ defaultShader; } ;
typedef TYPE_1__ shader_t ;
typedef int qhandle_t ;
struct TYPE_5__ {int (* Printf ) (int ,char*) ;} ;


 int LIGHTMAP_2D ;
 scalar_t__ MAX_QPATH ;
 int PRINT_ALL ;
 TYPE_1__* R_FindShader (char const*,int ,int ) ;
 int qtrue ;
 TYPE_2__ ri ;
 scalar_t__ strlen (char const*) ;
 int stub1 (int ,char*) ;

qhandle_t RE_RegisterShader( const char *name ) {
 shader_t *sh;

 if ( strlen( name ) >= MAX_QPATH ) {
  ri.Printf( PRINT_ALL, "Shader name exceeds MAX_QPATH\n" );
  return 0;
 }

 sh = R_FindShader( name, LIGHTMAP_2D, qtrue );






 if ( sh->defaultShader ) {
  return 0;
 }

 return sh->index;
}
