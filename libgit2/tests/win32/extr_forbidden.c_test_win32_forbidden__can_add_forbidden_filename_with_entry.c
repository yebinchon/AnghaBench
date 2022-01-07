
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {char* path; int id; int mode; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int cl_git_pass (int ) ;
 int git_index_add (int *,TYPE_2__*) ;
 int git_index_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int ) ;
 int repo ;

void test_win32_forbidden__can_add_forbidden_filename_with_entry(void)
{
 git_index *index;
 git_index_entry entry = {{0}};

 cl_git_pass(git_repository_index(&index, repo));

 entry.path = "aux";
 entry.mode = GIT_FILEMODE_BLOB;
 git_oid_fromstr(&entry.id, "da623abd956bb2fd8052c708c7ed43f05d192d37");

 cl_git_pass(git_index_add(index, &entry));

 git_index_free(index);
}
