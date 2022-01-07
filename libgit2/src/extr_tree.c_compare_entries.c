
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ git_tree_update ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_entries(const void *_a, const void *_b)
{
 const git_tree_update *a = (git_tree_update *) _a;
 const git_tree_update *b = (git_tree_update *) _b;

 return strcmp(a->path, b->path);
}
