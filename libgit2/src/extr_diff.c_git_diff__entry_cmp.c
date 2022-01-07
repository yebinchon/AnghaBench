
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ git_index_entry ;


 int strcmp (int ,int ) ;

int git_diff__entry_cmp(const void *a, const void *b)
{
 const git_index_entry *entry_a = a;
 const git_index_entry *entry_b = b;

 return strcmp(entry_a->path, entry_b->path);
}
