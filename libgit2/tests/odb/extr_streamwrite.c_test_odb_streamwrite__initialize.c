
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int declared_size; } ;


 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_odb_open_wstream (TYPE_1__**,int ,int,int ) ;
 int git_repository_odb (int *,int ) ;
 int odb ;
 int repo ;
 TYPE_1__* stream ;

void test_odb_streamwrite__initialize(void)
{
 repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_odb(&odb, repo));

 cl_git_pass(git_odb_open_wstream(&stream, odb, 14, GIT_OBJECT_BLOB));
 cl_assert_equal_sz(14, stream->declared_size);
}
