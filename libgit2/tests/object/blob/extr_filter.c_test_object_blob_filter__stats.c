
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats ;
typedef int git_buf_text_stats ;
typedef int git_buf ;
typedef int git_blob ;


 int CRLF_NUM_TEST_OBJECTS ;
 int GIT_BUF_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int * g_crlf_filtered_stats ;
 int * g_crlf_oids ;
 int g_repo ;
 int git_blob__getbuf (int *,int *) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_text_gather_stats (int *,int *,int) ;
 int memcmp (int *,int *,int) ;

void test_object_blob_filter__stats(void)
{
 int i;
 git_blob *blob;
 git_buf buf = GIT_BUF_INIT;
 git_buf_text_stats stats;

 for (i = 0; i < CRLF_NUM_TEST_OBJECTS; i++) {
  cl_git_pass(git_blob_lookup(&blob, g_repo, &g_crlf_oids[i]));
  cl_git_pass(git_blob__getbuf(&buf, blob));
  git_buf_text_gather_stats(&stats, &buf, 0);
  cl_assert_equal_i(
   0, memcmp(&g_crlf_filtered_stats[i], &stats, sizeof(stats)));
  git_blob_free(blob);
 }

 git_buf_dispose(&buf);
}
