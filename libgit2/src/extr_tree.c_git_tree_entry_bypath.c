
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int oid; } ;
typedef TYPE_2__ git_tree_entry ;
struct TYPE_13__ {int repo; } ;
struct TYPE_15__ {TYPE_1__ object; } ;
typedef TYPE_3__ git_tree ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_TREE ;
 TYPE_2__* entry_fromname (TYPE_3__ const*,char const*,size_t) ;
 int git_error_set (int ,char*,...) ;
 int git_tree_entry__is_tree (TYPE_2__ const*) ;
 int git_tree_entry_dup (TYPE_2__**,TYPE_2__ const*) ;
 int git_tree_free (TYPE_3__*) ;
 scalar_t__ git_tree_lookup (TYPE_3__**,int ,int ) ;
 size_t subpath_len (char const*) ;

int git_tree_entry_bypath(
 git_tree_entry **entry_out,
 const git_tree *root,
 const char *path)
{
 int error = 0;
 git_tree *subtree;
 const git_tree_entry *entry;
 size_t filename_len;



 filename_len = subpath_len(path);

 if (filename_len == 0) {
  git_error_set(GIT_ERROR_TREE, "invalid tree path given");
  return GIT_ENOTFOUND;
 }

 entry = entry_fromname(root, path, filename_len);

 if (entry == ((void*)0)) {
  git_error_set(GIT_ERROR_TREE,
      "the path '%.*s' does not exist in the given tree", (int) filename_len, path);
  return GIT_ENOTFOUND;
 }

 switch (path[filename_len]) {
 case '/':


  if (!git_tree_entry__is_tree(entry)) {
   git_error_set(GIT_ERROR_TREE,
       "the path '%.*s' exists but is not a tree", (int) filename_len, path);
   return GIT_ENOTFOUND;
  }




  if (path[filename_len + 1] != '\0')
   break;

 case '\0':


  return git_tree_entry_dup(entry_out, entry);
 }

 if (git_tree_lookup(&subtree, root->object.repo, entry->oid) < 0)
  return -1;

 error = git_tree_entry_bypath(
  entry_out,
  subtree,
  path + filename_len + 1
 );

 git_tree_free(subtree);
 return error;
}
