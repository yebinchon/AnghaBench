
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ie ;
typedef char git_tree_entry ;
typedef int git_tree ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_4__ {int path; int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef int git_commit ;


 int BIGFILE ;
 int BIGFILE_SIZE ;
 int GIT_FILEMODE_BLOB ;
 int cl_assert (char const*) ;
 int cl_git_pass (int ) ;
 int cl_is_env_set (char*) ;
 int cl_repo_commit_from_index (int *,int ,int *,int ,int ) ;
 int cl_skip () ;
 int g_repo ;
 char* git__calloc (int,int ) ;
 int git__free (char*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_index_add_from_buffer (int *,TYPE_1__*,char*,int ) ;
 int git_index_free (int *) ;
 int git_object_free (int *) ;
 int git_repository_index (int **,int ) ;
 char* git_tree_entry_byname (int *,int ) ;
 int git_tree_entry_to_object (int **,int ,char const*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void test_object_tree_read__largefile(void)
{
 const git_tree_entry *entry;
 git_index_entry ie;
 git_commit *commit;
 git_object *object;
 git_index *index;
 git_tree *tree;
 git_oid oid;
 char *buf;

 if (!cl_is_env_set("GITTEST_INVASIVE_FS_SIZE"))
  cl_skip();

 cl_assert(buf = git__calloc(1, BIGFILE_SIZE));

 memset(&ie, 0, sizeof(ie));
 ie.mode = GIT_FILEMODE_BLOB;
 ie.path = BIGFILE;

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_add_from_buffer(index, &ie, buf, BIGFILE_SIZE));
 cl_repo_commit_from_index(&oid, g_repo, ((void*)0), 0, BIGFILE);

 cl_git_pass(git_commit_lookup(&commit, g_repo, &oid));
 cl_git_pass(git_commit_tree(&tree, commit));
 cl_assert(entry = git_tree_entry_byname(tree, BIGFILE));
 cl_git_pass(git_tree_entry_to_object(&object, g_repo, entry));

 git_object_free(object);
 git_tree_free(tree);
 git_index_free(index);
 git_commit_free(commit);
 git__free(buf);
}
