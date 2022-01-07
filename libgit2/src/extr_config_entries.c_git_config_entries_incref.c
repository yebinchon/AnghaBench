
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_entries ;


 int GIT_REFCOUNT_INC (int *) ;

void git_config_entries_incref(git_config_entries *entries)
{
 GIT_REFCOUNT_INC(entries);
}
