
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ payload; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config_entries ;


 int git_config_entries_free (int *) ;

__attribute__((used)) static void config_snapshot_entry_free(git_config_entry *entry)
{
 git_config_entries *entries = (git_config_entries *) entry->payload;
 git_config_entries_free(entries);
}
