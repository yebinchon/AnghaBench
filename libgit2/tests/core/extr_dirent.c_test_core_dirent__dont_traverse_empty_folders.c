
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ptr; } ;
struct TYPE_7__ {TYPE_2__ path; } ;


 int check_counts (TYPE_1__*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,TYPE_1__*) ;
 int dirent_cleanup__cb ;
 TYPE_1__ empty ;
 int git_path_direach (TYPE_2__*,int ,int ,TYPE_1__*) ;
 int git_path_is_empty_dir (int ) ;
 int one_entry ;
 int setup (TYPE_1__*) ;

void test_core_dirent__dont_traverse_empty_folders(void)
{
 cl_set_cleanup(&dirent_cleanup__cb, &empty);
 setup(&empty);

 cl_git_pass(git_path_direach(&empty.path, 0, one_entry, &empty));

 check_counts(&empty);


 cl_assert(git_path_is_empty_dir(empty.path.ptr));
}
