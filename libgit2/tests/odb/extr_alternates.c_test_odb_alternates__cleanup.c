
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (int *) ;
 int cl_fixture_cleanup (int ) ;
 int destpath ;
 int filepath ;
 int git_buf_dispose (int *) ;
 int * paths ;

void test_odb_alternates__cleanup(void)
{
 size_t i;

 git_buf_dispose(&destpath);
 git_buf_dispose(&filepath);

 for (i = 0; i < ARRAY_SIZE(paths); i++)
  cl_fixture_cleanup(paths[i]);
}
