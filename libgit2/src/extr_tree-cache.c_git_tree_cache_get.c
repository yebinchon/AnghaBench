
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_cache ;


 int * find_child (int const*,char const*,char const*) ;
 char* strchr (char const*,char) ;

const git_tree_cache *git_tree_cache_get(const git_tree_cache *tree, const char *path)
{
 const char *ptr = path, *end;

 if (tree == ((void*)0)) {
  return ((void*)0);
 }

 while (1) {
  end = strchr(ptr, '/');

  tree = find_child(tree, ptr, end);
  if (tree == ((void*)0))
   return ((void*)0);

  if (end == ((void*)0) || *end + 1 == '\0')
   return tree;

  ptr = end + 1;
 }
}
