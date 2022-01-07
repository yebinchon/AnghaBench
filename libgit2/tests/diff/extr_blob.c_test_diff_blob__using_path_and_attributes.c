
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_oid ;
typedef int git_config ;
struct TYPE_11__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;
struct TYPE_13__ {int lines; int hunks; int files_binary; int * file_status; int files; } ;
struct TYPE_12__ {int flags; scalar_t__ context_lines; } ;


 TYPE_1__ GIT_BUF_INIT ;
 size_t GIT_DELTA_MODIFIED ;
 int GIT_DIFF_INCLUDE_UNMODIFIED ;
 int assert_identical_blobs_comparison (TYPE_7__*) ;
 int assert_one_modified (int,int,int ,int,int ,TYPE_7__*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_pass (int ) ;
 TYPE_7__ expected ;
 int g_repo ;
 int git_blob_free (int *) ;
 int git_blob_lookup_prefix (int **,int ,int *,int) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_oid_fromstrn (int *,char*,int) ;
 int git_patch_free (int *) ;
 int git_patch_from_blob_and_buffer (int **,int *,char*,char const*,int,int *,TYPE_2__*) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;
 int git_repository_config (int **,int ) ;
 TYPE_2__ opts ;
 int quick_diff_blob_to_str (int *,char*,char const*,size_t,int *) ;
 int strlen (char const*) ;

void test_diff_blob__using_path_and_attributes(void)
{
 git_config *cfg;
 git_blob *bin, *nonbin;
 git_oid oid;
 const char *nonbin_content = "Hello from the root\n";
 const char *bin_content =
  "0123456789\n\x01\x02\x03\x04\x05\x06\x07\x08\x09\x00\n0123456789\n";
 size_t bin_len = 33;
 const char *changed;
 git_patch *p;
 git_buf buf = GIT_BUF_INIT;



 cl_git_pass(git_repository_config(&cfg, g_repo));
 cl_git_pass(git_config_set_bool(cfg, "diff.iam_binary.binary", 1));
 cl_git_pass(git_config_set_bool(cfg, "diff.iam_text.binary", 0));
 cl_git_pass(git_config_set_string(
  cfg, "diff.iam_alphactx.xfuncname", "^[A-Za-z].*$"));
 cl_git_pass(git_config_set_bool(cfg, "diff.iam_textalpha.binary", 0));
 cl_git_pass(git_config_set_string(
  cfg, "diff.iam_textalpha.xfuncname", "^[A-Za-z].*$"));
 cl_git_pass(git_config_set_string(
  cfg, "diff.iam_numctx.funcname", "^[0-9][0-9]*"));
 cl_git_pass(git_config_set_bool(cfg, "diff.iam_textnum.binary", 0));
 cl_git_pass(git_config_set_string(
  cfg, "diff.iam_textnum.funcname", "^[0-9][0-9]*"));
 git_config_free(cfg);

 cl_git_append2file(
  "attr/.gitattributes",
  "\n\n# test_diff_blob__using_path_and_attributes extra\n\n"
  "*.binary  diff=iam_binary\n"
  "*.textary diff=iam_text\n"
  "*.alphary diff=iam_alphactx\n"
  "*.textalphary diff=iam_textalpha\n"
  "*.textnumary diff=iam_textnum\n"
  "*.numary  diff=iam_numctx\n\n");

 opts.context_lines = 0;
 opts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;

 cl_git_pass(git_oid_fromstrn(&oid, "45141a79", 8));
 cl_git_pass(git_blob_lookup_prefix(&nonbin, g_repo, &oid, 8));


 cl_git_pass(git_oid_fromstrn(&oid, "b435cd56", 8));
 cl_git_pass(git_blob_lookup_prefix(&bin, g_repo, &oid, 8));




 quick_diff_blob_to_str(nonbin, ((void*)0), nonbin_content, 0, ((void*)0));
 assert_identical_blobs_comparison(&expected);
 cl_assert_equal_i(0, expected.files_binary);



 quick_diff_blob_to_str(bin, ((void*)0), bin_content, bin_len, ((void*)0));
 assert_identical_blobs_comparison(&expected);
 cl_assert_equal_i(1, expected.files_binary);



 changed = "Hello from the root\nMore lines\nAnd more\nGo here\n";

 quick_diff_blob_to_str(nonbin, ((void*)0), changed, 0, ((void*)0));
 assert_one_modified(1, 3, 0, 3, 0, &expected);

 quick_diff_blob_to_str(nonbin, "foo/bar.binary", changed, 0, ((void*)0));
 cl_assert_equal_i(1, expected.files);
 cl_assert_equal_i(1, expected.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(1, expected.files_binary);
 cl_assert_equal_i(0, expected.hunks);
 cl_assert_equal_i(0, expected.lines);

 quick_diff_blob_to_str(nonbin, "foo/bar.textary", changed, 0, ((void*)0));
 assert_one_modified(1, 3, 0, 3, 0, &expected);

 quick_diff_blob_to_str(nonbin, "foo/bar.alphary", changed, 0, ((void*)0));
 assert_one_modified(1, 3, 0, 3, 0, &expected);

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, nonbin, "zzz.normal", changed, strlen(changed), ((void*)0), &opts));
 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(
  "diff --git a/zzz.normal b/zzz.normal\n"
  "index 45141a7..75b0dbb 100644\n"
  "--- a/zzz.normal\n"
  "+++ b/zzz.normal\n"
  "@@ -1,0 +2,3 @@ Hello from the root\n"
  "+More lines\n"
  "+And more\n"
  "+Go here\n", buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(p);

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, nonbin, "zzz.binary", changed, strlen(changed), ((void*)0), &opts));
 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(
  "diff --git a/zzz.binary b/zzz.binary\n"
  "index 45141a7..75b0dbb 100644\n"
  "Binary files a/zzz.binary and b/zzz.binary differ\n", buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(p);

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, nonbin, "zzz.alphary", changed, strlen(changed), ((void*)0), &opts));
 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(
  "diff --git a/zzz.alphary b/zzz.alphary\n"
  "index 45141a7..75b0dbb 100644\n"
  "--- a/zzz.alphary\n"
  "+++ b/zzz.alphary\n"
  "@@ -1,0 +2,3 @@ Hello from the root\n"
  "+More lines\n"
  "+And more\n"
  "+Go here\n", buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(p);

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, nonbin, "zzz.numary", changed, strlen(changed), ((void*)0), &opts));
 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(
  "diff --git a/zzz.numary b/zzz.numary\n"
  "index 45141a7..75b0dbb 100644\n"
  "--- a/zzz.numary\n"
  "+++ b/zzz.numary\n"
  "@@ -1,0 +2,3 @@\n"
  "+More lines\n"
  "+And more\n"
  "+Go here\n", buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(p);





 changed = "0123456789\n\x01\x02\x03\x04\x05\x06\x07\x08\x09\x00\nreplace a line\n";

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, bin, "zzz.normal", changed, 37, ((void*)0), &opts));
 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(
  "diff --git a/zzz.normal b/zzz.normal\n"
  "index b435cd5..1604519 100644\n"
  "Binary files a/zzz.normal and b/zzz.normal differ\n", buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(p);

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, bin, "zzz.textary", changed, 37, ((void*)0), &opts));
 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(
  "diff --git a/zzz.textary b/zzz.textary\n"
  "index b435cd5..1604519 100644\n"
  "--- a/zzz.textary\n"
  "+++ b/zzz.textary\n"
  "@@ -3 +3 @@\n"
  "-0123456789\n"
  "+replace a line\n", buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(p);

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, bin, "zzz.textalphary", changed, 37, ((void*)0), &opts));
 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(
  "diff --git a/zzz.textalphary b/zzz.textalphary\n"
  "index b435cd5..1604519 100644\n"
  "--- a/zzz.textalphary\n"
  "+++ b/zzz.textalphary\n"
  "@@ -3 +3 @@\n"
  "-0123456789\n"
  "+replace a line\n", buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(p);

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, bin, "zzz.textnumary", changed, 37, ((void*)0), &opts));
 cl_git_pass(git_patch_to_buf(&buf, p));
 cl_assert_equal_s(
  "diff --git a/zzz.textnumary b/zzz.textnumary\n"
  "index b435cd5..1604519 100644\n"
  "--- a/zzz.textnumary\n"
  "+++ b/zzz.textnumary\n"
  "@@ -3 +3 @@ 0123456789\n"
  "-0123456789\n"
  "+replace a line\n", buf.ptr);
 git_buf_clear(&buf);
 git_patch_free(p);

 git_buf_dispose(&buf);
 git_blob_free(nonbin);
 git_blob_free(bin);
}
