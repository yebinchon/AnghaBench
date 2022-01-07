
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* string; } ;
struct TYPE_3__ {char const* string; } ;


 TYPE_2__* com_basegame ;
 TYPE_1__* fs_gamedirvar ;

const char *FS_GetCurrentGameDir(void)
{
 if(fs_gamedirvar->string[0])
  return fs_gamedirvar->string;

 return com_basegame->string;
}
