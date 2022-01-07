
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; scalar_t__ defaultShader; } ;
typedef TYPE_1__ shader_t ;


 int LIGHTMAP_NONE ;
 TYPE_1__* R_FindShader (char const*,int ,int ) ;
 int qtrue ;

int R_FindShaderIndex(const char *shader_name)
{
 shader_t *sh = R_FindShader( shader_name, LIGHTMAP_NONE, qtrue );
 return sh->defaultShader ? 0 : sh->index;
}
