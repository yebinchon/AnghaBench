
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int shader_t ;
typedef size_t qhandle_t ;
struct TYPE_4__ {int (* Printf ) (int ,char*,size_t) ;} ;
struct TYPE_3__ {size_t numShaders; int ** shaders; int * defaultShader; } ;


 int PRINT_WARNING ;
 TYPE_2__ ri ;
 int stub1 (int ,char*,size_t) ;
 int stub2 (int ,char*,size_t) ;
 TYPE_1__ tr ;

shader_t *R_GetShaderByHandle( qhandle_t hShader ) {
 if ( hShader < 0 ) {
   ri.Printf( PRINT_WARNING, "R_GetShaderByHandle: out of range hShader '%d'\n", hShader );
  return tr.defaultShader;
 }
 if ( hShader >= tr.numShaders ) {
  ri.Printf( PRINT_WARNING, "R_GetShaderByHandle: out of range hShader '%d'\n", hShader );
  return tr.defaultShader;
 }
 return tr.shaders[hShader];
}
