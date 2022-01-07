
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ git_index_reuc_entry ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int reuc_cmp(const void *a, const void *b)
{
 const git_index_reuc_entry *info_a = a;
 const git_index_reuc_entry *info_b = b;

 return strcmp(info_a->path, info_b->path);
}
