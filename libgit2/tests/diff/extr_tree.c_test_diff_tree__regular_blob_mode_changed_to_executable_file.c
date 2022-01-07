
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * file_status; int files; } ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_TYPECHANGE ;
 int cl_assert_equal_i (int,int ) ;
 TYPE_1__ expect ;
 int process_tree_to_tree_diffing (char*,char*) ;

void test_diff_tree__regular_blob_mode_changed_to_executable_file(void)
{







 process_tree_to_tree_diffing("806999", "a8595c");

 cl_assert_equal_i(1, expect.files);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(1, expect.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_TYPECHANGE]);
}
