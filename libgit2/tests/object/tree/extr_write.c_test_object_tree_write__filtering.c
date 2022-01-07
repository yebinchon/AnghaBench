
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_treebuilder ;
typedef int git_tree ;
typedef int git_oid ;
struct TYPE_2__ {int attr; scalar_t__ filename; } ;


 TYPE_1__* _entries ;
 int blob_oid ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 scalar_t__ git_tree_entrycount (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 scalar_t__ git_treebuilder_entrycount (int *) ;
 int git_treebuilder_filter (int *,int ,char*) ;
 int git_treebuilder_free (int *) ;
 int * git_treebuilder_get (int *,char*) ;
 int git_treebuilder_insert (int *,int *,scalar_t__,int *,int ) ;
 int git_treebuilder_new (int **,int ,int *) ;
 int git_treebuilder_write (int *,int *) ;
 int treebuilder_filter_prefixed ;

void test_object_tree_write__filtering(void)
{
 git_treebuilder *builder;
 int i;
 git_oid entry_oid, tree_oid;
 git_tree *tree;

 git_oid_fromstr(&entry_oid, blob_oid);

 cl_git_pass(git_treebuilder_new(&builder, g_repo, ((void*)0)));

 for (i = 0; _entries[i].filename; ++i)
  cl_git_pass(git_treebuilder_insert(((void*)0),
   builder, _entries[i].filename, &entry_oid, _entries[i].attr));

 cl_assert_equal_i(6, (int)git_treebuilder_entrycount(builder));

 cl_assert(git_treebuilder_get(builder, "apple") != ((void*)0));
 cl_assert(git_treebuilder_get(builder, "aardvark") != ((void*)0));
 cl_assert(git_treebuilder_get(builder, "last") != ((void*)0));

 git_treebuilder_filter(builder, treebuilder_filter_prefixed, "apple");

 cl_assert_equal_i(4, (int)git_treebuilder_entrycount(builder));

 cl_assert(git_treebuilder_get(builder, "apple") == ((void*)0));
 cl_assert(git_treebuilder_get(builder, "aardvark") != ((void*)0));
 cl_assert(git_treebuilder_get(builder, "last") != ((void*)0));

 git_treebuilder_filter(builder, treebuilder_filter_prefixed, "a");

 cl_assert_equal_i(2, (int)git_treebuilder_entrycount(builder));

 cl_assert(git_treebuilder_get(builder, "aardvark") == ((void*)0));
 cl_assert(git_treebuilder_get(builder, "last") != ((void*)0));

 cl_git_pass(git_treebuilder_write(&tree_oid, builder));

 git_treebuilder_free(builder);

 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_oid));

 cl_assert_equal_i(2, (int)git_tree_entrycount(tree));

 git_tree_free(tree);
}
