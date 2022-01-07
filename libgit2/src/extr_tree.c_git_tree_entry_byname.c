
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree_entry ;
typedef int git_tree ;


 int assert (int) ;
 int const* entry_fromname (int const*,char const*,int ) ;
 int strlen (char const*) ;

const git_tree_entry *git_tree_entry_byname(
 const git_tree *tree, const char *filename)
{
 assert(tree && filename);

 return entry_fromname(tree, filename, strlen(filename));
}
