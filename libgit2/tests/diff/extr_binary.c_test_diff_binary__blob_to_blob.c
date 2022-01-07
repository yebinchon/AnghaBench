
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
struct diff_data {TYPE_3__ new_binary_base85; TYPE_3__ old_binary_base85; int new_path; int old_path; int new_binary_inflatedlen; int new_binary_type; int new_id; int old_binary_inflatedlen; int old_binary_type; int old_id; int member_0; } ;
typedef int git_oid ;
typedef int git_index ;
struct TYPE_5__ {int flags; int id_abbrev; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_blob ;


 int GIT_DIFF_BINARY_DELTA ;
 int GIT_DIFF_FORCE_BINARY ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_OID_HEXSZ ;
 int binary_cb ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int file_cb ;
 int git__free (int ) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_diff_blobs (int *,char*,int *,char*,TYPE_1__*,int ,int ,int ,int ,struct diff_data*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index__weakptr (int **,int ) ;
 int hunk_cb ;
 int line_cb ;
 int repo ;

void test_diff_binary__blob_to_blob(void)
{
 git_index *index;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_blob *old_blob, *new_blob;
 git_oid old_id, new_id;
 struct diff_data diff_data = {0};

 opts.flags = GIT_DIFF_SHOW_BINARY | GIT_DIFF_FORCE_BINARY;
 opts.id_abbrev = GIT_OID_HEXSZ;

 repo = cl_git_sandbox_init("renames");
 cl_git_pass(git_repository_index__weakptr(&index, repo));

 cl_git_append2file("renames/untimely.txt", "Oh that crazy Kipling!\r\n");
 cl_git_pass(git_index_add_bypath(index, "untimely.txt"));
 cl_git_pass(git_index_write(index));

 git_oid_fromstr(&old_id, "9a69d960ae94b060f56c2a8702545e2bb1abb935");
 git_oid_fromstr(&new_id, "1111d4f11f4b35bf6759e0fb714fe09731ef0840");

 cl_git_pass(git_blob_lookup(&old_blob, repo, &old_id));
 cl_git_pass(git_blob_lookup(&new_blob, repo, &new_id));

 cl_git_pass(git_diff_blobs(old_blob,
  "untimely.txt", new_blob, "untimely.txt", &opts,
  file_cb, binary_cb, hunk_cb, line_cb, &diff_data));

 cl_assert_equal_s("untimely.txt", diff_data.old_path);
 cl_assert_equal_oid(&old_id, &diff_data.old_id);
 cl_assert_equal_i(GIT_DIFF_BINARY_DELTA, diff_data.old_binary_type);
 cl_assert_equal_i(7, diff_data.old_binary_inflatedlen);
 cl_assert_equal_s("c%18D`@*{63ljhg(E~C7",
  diff_data.old_binary_base85.ptr);

 cl_assert_equal_s("untimely.txt", diff_data.new_path);
 cl_assert_equal_oid(&new_id, &diff_data.new_id);
 cl_assert_equal_i(GIT_DIFF_BINARY_DELTA, diff_data.new_binary_type);
 cl_assert_equal_i(32, diff_data.new_binary_inflatedlen);
 cl_assert_equal_s("c%1vf+QYWt3zLL@hC)e3Vu?a>QDRl4f_G*?PG(-ZA}<#J$+QbW",
  diff_data.new_binary_base85.ptr);

 git_blob_free(old_blob);
 git_blob_free(new_blob);

 git__free(diff_data.old_path);
 git__free(diff_data.new_path);

 git_buf_dispose(&diff_data.old_binary_base85);
 git_buf_dispose(&diff_data.new_binary_base85);
}
