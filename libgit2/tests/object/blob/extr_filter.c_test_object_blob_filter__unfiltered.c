
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_blob ;


 int CRLF_NUM_TEST_OBJECTS ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_sz (size_t,size_t) ;
 int cl_git_pass (int ) ;
 int * g_crlf_oids ;
 int * g_crlf_raw ;
 scalar_t__* g_crlf_raw_len ;
 int g_repo ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 int git_blob_rawcontent (int *) ;
 scalar_t__ git_blob_rawsize (int *) ;
 int memcmp (int ,int ,size_t) ;

void test_object_blob_filter__unfiltered(void)
{
 int i;
 git_blob *blob;

 for (i = 0; i < CRLF_NUM_TEST_OBJECTS; i++) {
  size_t raw_len = (size_t)g_crlf_raw_len[i];

  cl_git_pass(git_blob_lookup(&blob, g_repo, &g_crlf_oids[i]));

  cl_assert_equal_sz(raw_len, (size_t)git_blob_rawsize(blob));
  cl_assert_equal_i(
   0, memcmp(g_crlf_raw[i], git_blob_rawcontent(blob), raw_len));

  git_blob_free(blob);
 }
}
