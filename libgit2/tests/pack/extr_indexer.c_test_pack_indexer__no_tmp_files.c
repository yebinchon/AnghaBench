
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_indexer ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int clar_sandbox_path () ;
 int find_tmp_file_recurs (int *,int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_len (int *) ;
 int git_buf_sets (int *,int ) ;
 int git_indexer_free (int *) ;
 int git_indexer_new (int **,char*,int ,int *,int *) ;

void test_pack_indexer__no_tmp_files(void)
{
 git_indexer *idx = ((void*)0);
 git_buf path = GIT_BUF_INIT;
 git_buf first_tmp_file = GIT_BUF_INIT;


 cl_git_pass(git_buf_sets(&path, clar_sandbox_path()));
 cl_git_pass(find_tmp_file_recurs(&first_tmp_file, &path));
 git_buf_dispose(&path);
 cl_assert(git_buf_len(&first_tmp_file) == 0);

 cl_git_pass(git_indexer_new(&idx, ".", 0, ((void*)0), ((void*)0)));
 git_indexer_free(idx);

 cl_git_pass(git_buf_sets(&path, clar_sandbox_path()));
 cl_git_pass(find_tmp_file_recurs(&first_tmp_file, &path));
 git_buf_dispose(&path);
 cl_assert(git_buf_len(&first_tmp_file) == 0);
 git_buf_dispose(&first_tmp_file);
}
