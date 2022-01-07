
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_treebuilder ;
struct TYPE_4__ {int filename; } ;
typedef TYPE_1__ git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;
struct TYPE_5__ {char* filename; int attr; } ;


 int GIT_FILEMODE_BLOB ;
 TYPE_3__* _entries ;
 int blob_oid ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 TYPE_1__* git_tree_entry_byindex (int *,int) ;
 int * git_tree_entry_byname (int *,char*) ;
 scalar_t__ git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 scalar_t__ git_treebuilder_entrycount (int *) ;
 int git_treebuilder_free (int *) ;
 int git_treebuilder_insert (int *,int *,char*,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;
 int git_treebuilder_remove (int *,char*) ;
 int git_treebuilder_write (int *,int *) ;
 int strcmp (int ,char*) ;

void test_object_tree_write__removing_and_re_adding_in_treebuilder(void)
{
 git_treebuilder *builder;
 int i, aardvark_i, apple_i, apple_after_i, apple_extra_i, last_i;
 git_oid entry_oid, tree_oid;
 git_tree *tree;

 cl_git_pass(git_oid_fromstr(&entry_oid, blob_oid));

 cl_git_pass(git_treebuilder_new(&builder, g_repo, ((void*)0)));

 cl_assert_equal_i(0, (int)git_treebuilder_entrycount(builder));

 for (i = 0; _entries[i].filename; ++i)
  cl_git_pass(git_treebuilder_insert(((void*)0),
   builder, _entries[i].filename, &entry_oid, _entries[i].attr));

 cl_assert_equal_i(6, (int)git_treebuilder_entrycount(builder));

 cl_git_pass(git_treebuilder_remove(builder, "apple"));
 cl_assert_equal_i(5, (int)git_treebuilder_entrycount(builder));

 cl_git_pass(git_treebuilder_remove(builder, "apple_after"));
 cl_assert_equal_i(4, (int)git_treebuilder_entrycount(builder));

 cl_git_pass(git_treebuilder_insert(
  ((void*)0), builder, "before_last", &entry_oid, GIT_FILEMODE_BLOB));
 cl_assert_equal_i(5, (int)git_treebuilder_entrycount(builder));


 cl_git_pass(git_treebuilder_insert(
  ((void*)0), builder, "apple_after", &entry_oid, GIT_FILEMODE_BLOB));
 cl_assert_equal_i(6, (int)git_treebuilder_entrycount(builder));

 cl_git_pass(git_treebuilder_remove(builder, "last"));
 cl_assert_equal_i(5, (int)git_treebuilder_entrycount(builder));


 cl_git_pass(git_treebuilder_insert(
  ((void*)0), builder, "last", &entry_oid, GIT_FILEMODE_BLOB));
 cl_assert_equal_i(6, (int)git_treebuilder_entrycount(builder));

 cl_git_pass(git_treebuilder_insert(
  ((void*)0), builder, "apple_extra", &entry_oid, GIT_FILEMODE_BLOB));
 cl_assert_equal_i(7, (int)git_treebuilder_entrycount(builder));

 cl_git_pass(git_treebuilder_write(&tree_oid, builder));

 git_treebuilder_free(builder);

 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_oid));

 cl_assert_equal_i(7, (int)git_tree_entrycount(tree));

 cl_assert(git_tree_entry_byname(tree, ".first") != ((void*)0));
 cl_assert(git_tree_entry_byname(tree, "apple") == ((void*)0));
 cl_assert(git_tree_entry_byname(tree, "apple_after") != ((void*)0));
 cl_assert(git_tree_entry_byname(tree, "apple_extra") != ((void*)0));
 cl_assert(git_tree_entry_byname(tree, "last") != ((void*)0));

 aardvark_i = apple_i = apple_after_i = apple_extra_i = last_i = -1;

 for (i = 0; i < 7; ++i) {
  const git_tree_entry *entry = git_tree_entry_byindex(tree, i);

  if (!strcmp(entry->filename, "aardvark"))
   aardvark_i = i;
  else if (!strcmp(entry->filename, "apple"))
   apple_i = i;
  else if (!strcmp(entry->filename, "apple_after"))
   apple_after_i = i;
  else if (!strcmp(entry->filename, "apple_extra"))
   apple_extra_i = i;
  else if (!strcmp(entry->filename, "last"))
   last_i = i;
 }

 cl_assert_equal_i(-1, apple_i);
 cl_assert_equal_i(6, last_i);
 cl_assert(aardvark_i < apple_after_i);
 cl_assert(apple_after_i < apple_extra_i);

 git_tree_free(tree);
}
