
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* path; int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,int ) ;
 int GIT_OBJECT_BLOB ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_oid_cpy (int *,int *) ;
 int git_repository_index (int **,int ) ;

void test_index_filemodes__invalid(void)
{
 git_index *index;
 git_index_entry entry;
 const git_index_entry *dummy;

 cl_git_pass(git_repository_index(&index, g_repo));


 cl_git_mkfile("./filemodes/dummy-file.txt", "new-file\n");
 cl_git_pass(git_index_add_bypath(index, "dummy-file.txt"));
 cl_assert((dummy = git_index_get_bypath(index, "dummy-file.txt", 0)));

 GIT_INDEX_ENTRY_STAGE_SET(&entry, 0);
 entry.path = "foo";
 entry.mode = GIT_OBJECT_BLOB;
 git_oid_cpy(&entry.id, &dummy->id);
 cl_git_fail(git_index_add(index, &entry));

 entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_index_add(index, &entry));

 git_index_free(index);
}
