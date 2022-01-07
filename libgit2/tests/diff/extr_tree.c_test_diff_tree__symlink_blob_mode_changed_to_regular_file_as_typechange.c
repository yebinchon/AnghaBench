
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * file_status; int files; } ;
struct TYPE_3__ {int flags; } ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 size_t GIT_DELTA_TYPECHANGE ;
 int GIT_DIFF_INCLUDE_TYPECHANGE ;
 int cl_assert_equal_i (int,int ) ;
 TYPE_2__ expect ;
 TYPE_1__ opts ;
 int process_tree_to_tree_diffing (char*,char*) ;

void test_diff_tree__symlink_blob_mode_changed_to_regular_file_as_typechange(void)
{
 opts.flags = GIT_DIFF_INCLUDE_TYPECHANGE;
 process_tree_to_tree_diffing("7fccd7", "a8595c");

 cl_assert_equal_i(2, expect.files);
 cl_assert_equal_i(1, expect.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, expect.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(1, expect.file_status[GIT_DELTA_TYPECHANGE]);
}
