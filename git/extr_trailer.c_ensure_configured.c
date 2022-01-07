
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int if_missing; int if_exists; int where; } ;


 int EXISTS_ADD_IF_DIFFERENT_NEIGHBOR ;
 int MISSING_ADD ;
 int WHERE_END ;
 int configured ;
 TYPE_1__ default_conf_info ;
 int git_config (int ,int *) ;
 int git_trailer_config ;
 int git_trailer_default_config ;

__attribute__((used)) static void ensure_configured(void)
{
 if (configured)
  return;


 default_conf_info.where = WHERE_END;
 default_conf_info.if_exists = EXISTS_ADD_IF_DIFFERENT_NEIGHBOR;
 default_conf_info.if_missing = MISSING_ADD;
 git_config(git_trailer_default_config, ((void*)0));
 git_config(git_trailer_config, ((void*)0));
 configured = 1;
}
