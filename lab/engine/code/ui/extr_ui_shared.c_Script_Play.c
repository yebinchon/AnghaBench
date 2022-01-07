
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int itemDef_t ;
struct TYPE_2__ {int (* registerSound ) (char const*,int ) ;int (* startLocalSound ) (int ,int ) ;} ;


 int CHAN_LOCAL_SOUND ;
 TYPE_1__* DC ;
 scalar_t__ String_Parse (char**,char const**) ;
 int qfalse ;
 int stub1 (int ,int ) ;
 int stub2 (char const*,int ) ;

void Script_Play(itemDef_t *item, char **args) {
 const char *val;
 if (String_Parse(args, &val)) {
  DC->startLocalSound(DC->registerSound(val, qfalse), CHAN_LOCAL_SOUND);
 }
}
