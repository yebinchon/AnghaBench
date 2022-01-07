
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_odb ;
struct TYPE_6__ {char const* path; int id; int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
struct TYPE_7__ {int local; } ;


 int GIT_CLONE_NO_LOCAL ;
 int GIT_FILEMODE_BLOB ;
 int GIT_OBJECT_BLOB ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_path_url (int ) ;
 int * cl_git_sandbox_init (char*) ;
 TYPE_4__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_4__*) ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_write_tree_to (int *,int *,int *) ;
 int git_odb_free (int *) ;
 int git_odb_write (int *,int *,char const*,int ,int ) ;
 int git_reference_create (int **,int *,char const*,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char const*) ;
 int git_reference_target (int *) ;
 int git_repository_free (int *) ;
 int git_repository_odb (int **,int *) ;
 int git_repository_path (int *) ;
 int git_tree_entry_bypath (int **,int *,char const*) ;
 int git_tree_entry_free (int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (char const*) ;

void test_clone_nonetwork__clone_tag_to_tree(void)
{
 git_repository *stage;
 git_index_entry entry;
 git_index *index;
 git_odb *odb;
 git_oid tree_id;
 git_tree *tree;
 git_reference *tag;
 git_tree_entry *tentry;
 const char *file_path = "some/deep/path.txt";
 const char *file_content = "some content\n";
 const char *tag_name = "refs/tags/tree-tag";

 stage = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_odb(&odb, stage));
 cl_git_pass(git_index_new(&index));

 memset(&entry, 0, sizeof(git_index_entry));
 entry.path = file_path;
 entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_odb_write(&entry.id, odb, file_content, strlen(file_content), GIT_OBJECT_BLOB));

 cl_git_pass(git_index_add(index, &entry));
 cl_git_pass(git_index_write_tree_to(&tree_id, index, stage));
 cl_git_pass(git_reference_create(&tag, stage, tag_name, &tree_id, 0, ((void*)0)));
 git_reference_free(tag);
 git_odb_free(odb);
 git_index_free(index);

 g_options.local = GIT_CLONE_NO_LOCAL;
 cl_git_pass(git_clone(&g_repo, cl_git_path_url(git_repository_path(stage)), "./foo", &g_options));
 git_repository_free(stage);

 cl_git_pass(git_reference_lookup(&tag, g_repo, tag_name));
 cl_git_pass(git_tree_lookup(&tree, g_repo, git_reference_target(tag)));
 git_reference_free(tag);

 cl_git_pass(git_tree_entry_bypath(&tentry, tree, file_path));
 git_tree_entry_free(tentry);
 git_tree_free(tree);

 cl_fixture_cleanup("testrepo.git");
}
