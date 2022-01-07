
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRLF_NUM_TEST_OBJECTS ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int * g_crlf_oids ;
 int * g_crlf_raw ;
 scalar_t__* g_crlf_raw_len ;
 int g_repo ;
 int git_blob_create_from_buffer (int *,int ,int ,size_t) ;
 scalar_t__ strlen (int ) ;

void test_object_blob_filter__initialize(void)
{
 int i;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 for (i = 0; i < CRLF_NUM_TEST_OBJECTS; i++) {
  if (g_crlf_raw_len[i] < 0)
   g_crlf_raw_len[i] = strlen(g_crlf_raw[i]);

  cl_git_pass(git_blob_create_from_buffer(
   &g_crlf_oids[i], g_repo, g_crlf_raw[i], (size_t)g_crlf_raw_len[i]));
 }
}
