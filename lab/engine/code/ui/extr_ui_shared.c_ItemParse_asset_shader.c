
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int asset; } ;
typedef TYPE_1__ itemDef_t ;
struct TYPE_5__ {int (* registerShaderNoMip ) (char const*) ;} ;


 TYPE_3__* DC ;
 int PC_String_Parse (int,char const**) ;
 int qfalse ;
 int qtrue ;
 int stub1 (char const*) ;

qboolean ItemParse_asset_shader( itemDef_t *item, int handle ) {
 const char *temp;

 if (!PC_String_Parse(handle, &temp)) {
  return qfalse;
 }
 item->asset = DC->registerShaderNoMip(temp);
 return qtrue;
}
