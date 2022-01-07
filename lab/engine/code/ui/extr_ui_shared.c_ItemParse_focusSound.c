
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int focusSound; } ;
typedef TYPE_1__ itemDef_t ;
struct TYPE_5__ {int (* registerSound ) (char const*,int ) ;} ;


 TYPE_3__* DC ;
 int PC_String_Parse (int,char const**) ;
 int qfalse ;
 int qtrue ;
 int stub1 (char const*,int ) ;

qboolean ItemParse_focusSound( itemDef_t *item, int handle ) {
 const char *temp;
 if (!PC_String_Parse(handle, &temp)) {
  return qfalse;
 }
 item->focusSound = DC->registerSound(temp, qfalse);
 return qtrue;
}
