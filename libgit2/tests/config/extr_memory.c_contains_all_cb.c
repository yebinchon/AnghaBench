
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct expected_entry {int seen; scalar_t__ value; scalar_t__ name; } ;
struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ git_config_entry ;


 int cl_fail (char*) ;
 scalar_t__ strcmp (scalar_t__,int ) ;

__attribute__((used)) static int contains_all_cb(const git_config_entry *entry, void *payload)
{
 struct expected_entry *entries = (struct expected_entry *) payload;
 int i;

 for (i = 0; entries[i].name; i++) {
  if (strcmp(entries[i].name, entry->name) ||
      strcmp(entries[i].value , entry->value))
   continue;

  if (entries[i].seen)
   cl_fail("Entry seen more than once");
  entries[i].seen = 1;
  return 0;
 }

 cl_fail("Unexpected entry");
 return -1;
}
