
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int mode; char* path; int id; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add (int *,TYPE_2__*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_workdir (int ) ;

__attribute__((used)) static void modify_index_ondisk(void)
{
 git_repository *other_repo;
 git_index *other_index;
 git_index_entry entry = {{0}};

 cl_git_pass(git_repository_open(&other_repo, git_repository_workdir(g_repo)));
 cl_git_pass(git_repository_index(&other_index, other_repo));

 cl_git_pass(git_oid_fromstr(&entry.id, "1385f264afb75a56a5bec74243be9b367ba4ca08"));
 entry.mode = 0100644;
 entry.path = "README";

 cl_git_pass(git_index_add(other_index, &entry));
 cl_git_pass(git_index_write(other_index));

 git_index_free(other_index);
 git_repository_free(other_repo);
}
