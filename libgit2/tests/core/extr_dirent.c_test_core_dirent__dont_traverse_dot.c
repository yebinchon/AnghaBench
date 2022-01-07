
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
 TYPE_1__ dot ;
 int git_path_direach (int *,int ,int ,TYPE_1__*) ;
 int one_entry ;
 int setup (TYPE_1__*) ;

void test_core_dirent__dont_traverse_dot(void)
{
 cl_set_cleanup(&dirent_cleanup__cb, &dot);
 setup(&dot);

 cl_git_pass(git_path_direach(&dot.path, 0, one_entry, &dot));

 check_counts(&dot);
}
