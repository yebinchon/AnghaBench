
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_env_bool (char*,int ) ;

int use_gettext_poison(void)
{
 static int poison_requested = -1;
 if (poison_requested == -1)
  poison_requested = git_env_bool("GIT_TEST_GETTEXT_POISON", 0);
 return poison_requested;
}
