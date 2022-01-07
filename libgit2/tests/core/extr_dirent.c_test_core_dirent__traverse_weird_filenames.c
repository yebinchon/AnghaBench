
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
 TYPE_1__ odd ;
 int one_entry ;
 int setup (TYPE_1__*) ;

void test_core_dirent__traverse_weird_filenames(void)
{
 cl_set_cleanup(&dirent_cleanup__cb, &odd);
 setup(&odd);

 cl_git_pass(git_path_direach(&odd.path, 0, one_entry, &odd));

 check_counts(&odd);
}
