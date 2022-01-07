
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t children_count; size_t namelen; int name; struct TYPE_4__** children; } ;
typedef TYPE_1__ git_tree_cache ;


 int memcmp (char const*,int ,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static git_tree_cache *find_child(
 const git_tree_cache *tree, const char *path, const char *end)
{
 size_t i, dirlen = end ? (size_t)(end - path) : strlen(path);

 for (i = 0; i < tree->children_count; ++i) {
  git_tree_cache *child = tree->children[i];

  if (child->namelen == dirlen && !memcmp(path, child->name, dirlen))
   return child;
 }

 return ((void*)0);
}
