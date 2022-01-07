
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ git_merge_driver_entry ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int merge_driver_entry_search(const void *a, const void *b)
{
 const char *name_a = a;
 const git_merge_driver_entry *entry_b = b;

 return strcmp(name_a, entry_b->name);
}
