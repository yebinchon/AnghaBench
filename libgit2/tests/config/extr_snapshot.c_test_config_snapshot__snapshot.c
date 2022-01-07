
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int * cfg ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_snapshot (int **,int *) ;
 int p_unlink (char*) ;
 int * snapshot ;

void test_config_snapshot__snapshot(void)
{
 git_config *snapshot_snapshot;
 int i;

 cl_git_mkfile("configfile", "[section]\nkey = 1\n");

 cl_git_pass(git_config_open_ondisk(&cfg, "configfile"));
 cl_git_pass(git_config_snapshot(&snapshot, cfg));

 cl_git_pass(git_config_snapshot(&snapshot_snapshot, snapshot));

 cl_git_pass(git_config_get_int32(&i, snapshot_snapshot, "section.key"));
 cl_assert_equal_i(i, 1);

 git_config_free(snapshot_snapshot);

 cl_git_pass(p_unlink("configfile"));
}
