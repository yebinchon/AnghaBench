
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config ;


 int git_config_delete_entry (int *,int ) ;

__attribute__((used)) static int delete_one_config(const git_config_entry *entry, void *payload)
{
 git_config *cfg = payload;
 return git_config_delete_entry(cfg, entry->name);
}
