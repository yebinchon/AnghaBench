
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zeroed ;
typedef int git_filter_list ;
typedef int git_config ;
struct TYPE_7__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;
struct TYPE_8__ {int ptr; int size; } ;


 int CRLF_NUM_TEST_OBJECTS ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_FILTER_TO_ODB ;
 int cl_assert (int *) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_pass (int ) ;
 TYPE_5__* g_crlf_filtered ;
 int * g_crlf_oids ;
 int g_repo ;
 int git_attr_cache_flush (int ) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_filter_list_apply_to_blob (TYPE_1__*,int *,int *) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int ,int *,char*,int ,int ) ;
 int git_repository_config (int **,int ) ;
 int memcmp (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void test_object_blob_filter__to_odb(void)
{
 git_filter_list *fl = ((void*)0);
 git_config *cfg;
 int i;
 git_blob *blob;
 git_buf out = GIT_BUF_INIT, zeroed;

 cl_git_pass(git_repository_config(&cfg, g_repo));
 cl_assert(cfg);

 git_attr_cache_flush(g_repo);
 cl_git_append2file("empty_standard_repo/.gitattributes", "*.txt text\n");

 cl_git_pass(git_filter_list_load(
  &fl, g_repo, ((void*)0), "filename.txt", GIT_FILTER_TO_ODB, 0));
 cl_assert(fl != ((void*)0));

 for (i = 0; i < CRLF_NUM_TEST_OBJECTS; i++) {
  cl_git_pass(git_blob_lookup(&blob, g_repo, &g_crlf_oids[i]));


  cl_git_pass(git_filter_list_apply_to_blob(&out, fl, blob));
  cl_assert_equal_sz(g_crlf_filtered[i].size, out.size);
  cl_assert_equal_i(
   0, memcmp(out.ptr, g_crlf_filtered[i].ptr, out.size));


  memset(&zeroed, 0, sizeof(zeroed));
  cl_git_pass(git_filter_list_apply_to_blob(&zeroed, fl, blob));
  cl_assert_equal_sz(g_crlf_filtered[i].size, zeroed.size);
  cl_assert_equal_i(
   0, memcmp(zeroed.ptr, g_crlf_filtered[i].ptr, zeroed.size));
  git_buf_dispose(&zeroed);

  git_blob_free(blob);
 }

 git_filter_list_free(fl);
 git_buf_dispose(&out);
 git_config_free(cfg);
}
