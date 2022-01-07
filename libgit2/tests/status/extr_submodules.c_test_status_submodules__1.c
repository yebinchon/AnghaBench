
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entry_count; } ;
typedef TYPE_1__ status_entry_counts ;


 int cb_status__match ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int expected_files ;
 int expected_status ;
 int g_repo ;
 int git_path_isdir (char*) ;
 int git_path_isfile (char*) ;
 int git_status_foreach (int ,int ,TYPE_1__*) ;
 int setup_fixture_submodules () ;
 int status_counts_init (TYPE_1__,int ,int ) ;

void test_status_submodules__1(void)
{
 status_entry_counts counts;

 g_repo = setup_fixture_submodules();

 cl_assert(git_path_isdir("submodules/.git"));
 cl_assert(git_path_isdir("submodules/testrepo/.git"));
 cl_assert(git_path_isfile("submodules/.gitmodules"));

 status_counts_init(counts, expected_files, expected_status);

 cl_git_pass( git_status_foreach(g_repo, cb_status__match, &counts) );

 cl_assert_equal_i(6, counts.entry_count);
}
