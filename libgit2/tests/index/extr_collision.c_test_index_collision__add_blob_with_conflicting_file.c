
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;
struct TYPE_7__ {int seconds; } ;
struct TYPE_6__ {int seconds; } ;
struct TYPE_8__ {int mode; char* path; int id; scalar_t__ file_size; TYPE_2__ mtime; TYPE_1__ ctime; } ;
typedef TYPE_3__ git_index_entry ;
typedef int entry ;


 int cl_git_pass (int ) ;
 int g_empty_id ;
 int g_index ;
 int g_repo ;
 int git_index_add (int ,TYPE_3__*) ;
 int git_index_write_tree (int *,int ) ;
 int git_oid_cpy (int *,int *) ;
 int git_tree_entry_bypath (int **,int *,char*) ;
 int git_tree_entry_free (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int memset (TYPE_3__*,int ,int) ;

void test_index_collision__add_blob_with_conflicting_file(void)
{
 git_index_entry entry;
 git_tree_entry *tentry;
 git_oid tree_id;
 git_tree *tree;

 memset(&entry, 0, sizeof(entry));
 entry.ctime.seconds = 12346789;
 entry.mtime.seconds = 12346789;
 entry.mode = 0100644;
 entry.file_size = 0;
 git_oid_cpy(&entry.id, &g_empty_id);

 entry.path = "a/b";
 cl_git_pass(git_index_add(g_index, &entry));


 cl_git_pass(git_index_write_tree(&tree_id, g_index));
 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_id));
 cl_git_pass(git_tree_entry_bypath(&tentry, tree, "a/b"));
 git_tree_entry_free(tentry);
 git_tree_free(tree);


 entry.path = "a/b/c";
 cl_git_pass(git_index_add(g_index, &entry));


 cl_git_pass(git_index_write_tree(&tree_id, g_index));
 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_id));
 cl_git_pass(git_tree_entry_bypath(&tentry, tree, "a/b/c"));
 git_tree_entry_free(tentry);
 git_tree_free(tree);
}
