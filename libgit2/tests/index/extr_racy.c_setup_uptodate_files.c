
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int member_0; } ;
struct TYPE_12__ {char* path; void* mode; int id; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 void* GIT_FILEMODE_BLOB ;
 int cl_assert (TYPE_2__ const*) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,char*) ;
 int git_index_add (int *,TYPE_2__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_add_from_buffer (int *,TYPE_2__*,char*,int) ;
 int git_index_free (int *) ;
 TYPE_2__* git_index_get_bypath (int *,char*,int ) ;
 int git_oid_cpy (int *,int *) ;
 int git_repository_index (int **,int ) ;
 int git_repository_workdir (int ) ;

__attribute__((used)) static void setup_uptodate_files(void)
{
 git_buf path = GIT_BUF_INIT;
 git_index *index;
 const git_index_entry *a_entry;
 git_index_entry new_entry = {{0}};

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(g_repo), "A"));
 cl_git_mkfile(path.ptr, "A");


 cl_git_pass(git_index_add_bypath(index, "A"));

 cl_assert((a_entry = git_index_get_bypath(index, "A", 0)));


 new_entry.path = "B";
 new_entry.mode = GIT_FILEMODE_BLOB;
 git_oid_cpy(&new_entry.id, &a_entry->id);
 cl_git_pass(git_index_add(index, &new_entry));


 new_entry.path = "C";
 new_entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_index_add_from_buffer(index, &new_entry, "hello!\n", 7));

 git_index_free(index);
 git_buf_dispose(&path);
}
