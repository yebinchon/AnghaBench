
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ git_config_entry ;


 char* git__strdup (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int foreach_cb(const git_config_entry *entry, void *payload)
{
 if (!strcmp(entry->name, "key.value")) {
  *(char **)payload = git__strdup(entry->value);
  return 0;
 }
 return -1;
}
