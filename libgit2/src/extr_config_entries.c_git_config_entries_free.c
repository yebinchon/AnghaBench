
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_entries ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int config_entries_free ;

void git_config_entries_free(git_config_entries *entries)
{
 if (entries)
  GIT_REFCOUNT_DEC(entries, config_entries_free);
}
