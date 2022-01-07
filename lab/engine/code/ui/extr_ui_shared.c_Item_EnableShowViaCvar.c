
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int script ;
typedef int qboolean ;
struct TYPE_4__ {int cvarFlags; scalar_t__* enableCvar; scalar_t__* cvarTest; } ;
typedef TYPE_1__ itemDef_t ;
typedef int buff ;
struct TYPE_5__ {int (* getCVarString ) (scalar_t__*,char*,int) ;} ;


 TYPE_3__* DC ;
 int Q_strcat (char*,int,scalar_t__*) ;
 scalar_t__ Q_stricmp (char*,char const*) ;
 int String_Parse (char**,char const**) ;
 int memset (char*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int stub1 (scalar_t__*,char*,int) ;

qboolean Item_EnableShowViaCvar(itemDef_t *item, int flag) {
  char script[1024], *p;
  memset(script, 0, sizeof(script));
  if (item && item->enableCvar && *item->enableCvar && item->cvarTest && *item->cvarTest) {
  char buff[1024];
   DC->getCVarString(item->cvarTest, buff, sizeof(buff));

    Q_strcat(script, 1024, item->enableCvar);
    p = script;
    while (1) {
      const char *val;

      if (!String_Parse(&p, &val)) {
    return (item->cvarFlags & flag) ? qfalse : qtrue;
      }

      if (val[0] == ';' && val[1] == '\0') {
        continue;
      }


   if (item->cvarFlags & flag) {
        if (Q_stricmp(buff, val) == 0) {
     return qtrue;
    }
   } else {

        if (Q_stricmp(buff, val) == 0) {
     return qfalse;
    }
   }

    }
  return (item->cvarFlags & flag) ? qfalse : qtrue;
  }
 return qtrue;
}
