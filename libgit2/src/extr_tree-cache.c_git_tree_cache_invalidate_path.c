
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int entry_count; } ;
typedef TYPE_1__ git_tree_cache ;


 TYPE_1__* find_child (TYPE_1__*,char const*,char const*) ;
 char* strchr (char const*,char) ;

void git_tree_cache_invalidate_path(git_tree_cache *tree, const char *path)
{
 const char *ptr = path, *end;

 if (tree == ((void*)0))
  return;

 tree->entry_count = -1;

 while (ptr != ((void*)0)) {
  end = strchr(ptr, '/');

  if (end == ((void*)0))
   break;

  tree = find_child(tree, ptr, end);
  if (tree == ((void*)0))
   return;

  tree->entry_count = -1;
  ptr = end + 1;
 }
}
