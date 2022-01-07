
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_path_diriter ;
struct TYPE_7__ {int ptr; } ;
struct TYPE_8__ {TYPE_1__ path; } ;


 int GIT_ITEROVER ;
 int GIT_PATH_DIRITER_INIT ;
 int check_counts (TYPE_2__*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,TYPE_2__*) ;
 int dirent_cleanup__cb ;
 int git_path_diriter_free (int *) ;
 int git_path_diriter_init (int *,int ,int ) ;
 int git_path_diriter_next (int *) ;
 int handle_next (int *,TYPE_2__*) ;
 int setup (TYPE_2__*) ;
 TYPE_2__ sub ;

void test_core_dirent__diriter_with_fullname(void)
{
 git_path_diriter diriter = GIT_PATH_DIRITER_INIT;
 int error;

 cl_set_cleanup(&dirent_cleanup__cb, &sub);
 setup(&sub);

 cl_git_pass(git_path_diriter_init(&diriter, sub.path.ptr, 0));

 while ((error = git_path_diriter_next(&diriter)) == 0)
  handle_next(&diriter, &sub);

 cl_assert_equal_i(error, GIT_ITEROVER);

 git_path_diriter_free(&diriter);

 check_counts(&sub);
}
