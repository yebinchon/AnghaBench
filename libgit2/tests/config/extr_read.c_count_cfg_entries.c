
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_entry ;


 int GIT_UNUSED (int const*) ;

__attribute__((used)) static int count_cfg_entries(const git_config_entry *entry, void *payload)
{
 int *count = payload;
 GIT_UNUSED(entry);
 (*count)++;
 return 0;
}
