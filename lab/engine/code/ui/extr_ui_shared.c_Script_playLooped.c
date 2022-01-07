
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int itemDef_t ;
struct TYPE_2__ {int (* startBackgroundTrack ) (char const*,char const*) ;int (* stopBackgroundTrack ) () ;} ;


 TYPE_1__* DC ;
 scalar_t__ String_Parse (char**,char const**) ;
 int stub1 () ;
 int stub2 (char const*,char const*) ;

void Script_playLooped(itemDef_t *item, char **args) {
 const char *val;
 if (String_Parse(args, &val)) {
  DC->stopBackgroundTrack();
  DC->startBackgroundTrack(val, val);
 }
}
