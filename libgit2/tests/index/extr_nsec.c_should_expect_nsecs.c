
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int clar_sandbox_path () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int p_unlink (int ) ;
 int try_create_file_with_nsec_timestamp (int ) ;

__attribute__((used)) static bool should_expect_nsecs(void)
{
 git_buf nsec_path = GIT_BUF_INIT;
 bool expect;

 git_buf_joinpath(&nsec_path, clar_sandbox_path(), "nsec_test");

 expect = try_create_file_with_nsec_timestamp(nsec_path.ptr);

 p_unlink(nsec_path.ptr);

 git_buf_dispose(&nsec_path);

 return expect;
}
