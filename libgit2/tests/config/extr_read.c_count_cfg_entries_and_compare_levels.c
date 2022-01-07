
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ level; int value; } ;
typedef TYPE_1__ git_config_entry ;


 scalar_t__ GIT_CONFIG_LEVEL_GLOBAL ;
 scalar_t__ GIT_CONFIG_LEVEL_SYSTEM ;
 int cl_assert (int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int count_cfg_entries_and_compare_levels(
 const git_config_entry *entry, void *payload)
{
 int *count = payload;

 if (!strcmp(entry->value, "7") || !strcmp(entry->value, "17"))
  cl_assert(entry->level == GIT_CONFIG_LEVEL_GLOBAL);
 else
  cl_assert(entry->level == GIT_CONFIG_LEVEL_SYSTEM);

 (*count)++;
 return 0;
}
