
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ git_index_entry ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int index_entry_srch_path(const void *path, const void *array_member)
{
 const git_index_entry *entry = array_member;

 return strcmp((const char *)path, entry->path);
}
