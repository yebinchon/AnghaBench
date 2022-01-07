
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int,size_t) ;
 int cl_assert_equal_s (char*,int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_repository__reserved_names (TYPE_1__**,size_t*,int *,int) ;

void test_repo_reservedname__includes_shortname_when_requested(void)
{
 git_repository *repo;
 git_buf *reserved;
 size_t reserved_len;

 repo = cl_git_sandbox_init("nasty");
 cl_assert(git_repository__reserved_names(&reserved, &reserved_len, repo, 1));

 cl_assert_equal_i(2, reserved_len);
 cl_assert_equal_s(".git", reserved[0].ptr);
 cl_assert_equal_s("GIT~1", reserved[1].ptr);
}
