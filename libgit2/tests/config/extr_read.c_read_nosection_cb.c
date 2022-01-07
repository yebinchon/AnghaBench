
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ git_config_entry ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int read_nosection_cb(const git_config_entry *entry, void *payload) {
 int *seen = (int*)payload;
 if (strcmp(entry->name, "key") == 0) {
  (*seen)++;
 }
 return 0;
}
