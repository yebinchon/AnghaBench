
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int O_CREAT ;
 int O_RDWR ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_write2file (char*,char*,int,int,int) ;
 int cl_must_pass (int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;
 int p_unlink (char*) ;
 int repo ;

void test_win32_forbidden__cannot_add_forbidden_filename_from_filesystem(void)
{
 git_index *index;




 cl_git_pass(git_repository_index(&index, repo));
 cl_git_write2file("win32-forbidden/aux.", "foo\n", 4, O_RDWR | O_CREAT, 0666);




 cl_git_pass(git_index_add_bypath(index, "aux."));


 cl_must_pass(p_unlink("win32-forbidden/aux."));
 git_index_free(index);
}
