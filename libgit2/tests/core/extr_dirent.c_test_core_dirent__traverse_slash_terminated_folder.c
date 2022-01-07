
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;


 int check_counts (TYPE_1__*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,TYPE_1__*) ;
 int dirent_cleanup__cb ;
 int git_path_direach (int *,int ,int ,TYPE_1__*) ;
 int one_entry ;
 int setup (TYPE_1__*) ;
 TYPE_1__ sub_slash ;

void test_core_dirent__traverse_slash_terminated_folder(void)
{
 cl_set_cleanup(&dirent_cleanup__cb, &sub_slash);
 setup(&sub_slash);

 cl_git_pass(git_path_direach(&sub_slash.path, 0, one_entry, &sub_slash));

 check_counts(&sub_slash);
}
