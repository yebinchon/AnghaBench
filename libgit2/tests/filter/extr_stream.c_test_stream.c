
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_7__ {int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
struct TYPE_8__ {int checkout_strategy; } ;
typedef TYPE_2__ git_checkout_options ;
typedef int git_blob ;


 size_t CHUNKSIZE ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (size_t,int ) ;
 int cl_assert_equal_sz (size_t,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 int git_blob_rawsize (int *) ;
 int git_checkout_index (int ,int *,TYPE_2__*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int p_stat (char*,struct stat*) ;
 int p_unlink (char*) ;
 int writefile (char*,size_t) ;

__attribute__((used)) static void test_stream(size_t numchunks)
{
 git_index *index;
 const git_index_entry *entry;
 git_blob *blob;
 struct stat st;
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

 checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_mkfile(
  "empty_standard_repo/.gitattributes",
  "* compress\n");


 writefile("streamed_file", numchunks);


 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_add_bypath(index, "streamed_file"));
 cl_git_pass(git_index_write(index));


 cl_assert(entry = git_index_get_bypath(index, "streamed_file", 0));

 cl_git_pass(git_blob_lookup(&blob, g_repo, &entry->id));
 cl_assert_equal_i(numchunks, git_blob_rawsize(blob));


 cl_must_pass(p_unlink("empty_standard_repo/streamed_file"));
 cl_git_pass(git_checkout_index(g_repo, index, &checkout_opts));


 cl_must_pass(p_stat("empty_standard_repo/streamed_file", &st));
 cl_assert_equal_sz((numchunks * CHUNKSIZE), st.st_size);

 git_index_free(index);
 git_blob_free(blob);
}
