
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* start; char* end; int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_9__ {scalar_t__ mode; int path; } ;
typedef TYPE_2__ git_index_entry ;


 scalar_t__ GIT_FILEMODE_COMMIT ;
 scalar_t__ GIT_FILEMODE_TREE ;
 int GIT_ITERATOR_DONT_AUTOEXPAND ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int cl_assert (int) ;
 int cl_assert_ (int,char const*) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_iterator_advance (TYPE_2__ const**,int *) ;
 int git_iterator_advance_into (TYPE_2__ const**,int *) ;
 int git_iterator_current (TYPE_2__ const**,int *) ;
 int git_iterator_current_is_ignored (int *) ;
 int git_iterator_for_workdir (int **,int ,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int p_mkdir (char*,int) ;

void test_iterator_workdir__builtin_ignores(void)
{
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 const git_index_entry *entry;
 int idx;
 static struct {
  const char *path;
  bool ignored;
 } expected[] = {
  { "dir/", 1 },
  { "file", 0 },
  { "ign", 1 },
  { "macro_bad", 0 },
  { "macro_test", 0 },
  { "root_test1", 0 },
  { "root_test2", 0 },
  { "root_test3", 0 },
  { "root_test4.txt", 0 },
  { "sub/", 0 },
  { "sub/.gitattributes", 0 },
  { "sub/abc", 0 },
  { "sub/dir/", 1 },
  { "sub/file", 0 },
  { "sub/ign/", 1 },
  { "sub/sub/", 0 },
  { "sub/sub/.gitattributes", 0 },
  { "sub/sub/dir", 0 },
  { "sub/sub/file", 0 },
  { ((void*)0), 0 }
 };

 g_repo = cl_git_sandbox_init("attr");

 cl_git_pass(p_mkdir("attr/sub/sub/.git", 0777));
 cl_git_mkfile("attr/sub/.git", "whatever");

 i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;
 i_opts.start = "dir";
 i_opts.end = "sub/sub/file";

 cl_git_pass(git_iterator_for_workdir(
  &i, g_repo, ((void*)0), ((void*)0), &i_opts));
 cl_git_pass(git_iterator_current(&entry, i));

 for (idx = 0; entry != ((void*)0); ++idx) {
  int ignored = git_iterator_current_is_ignored(i);

  cl_assert_equal_s(expected[idx].path, entry->path);
  cl_assert_(ignored == expected[idx].ignored, expected[idx].path);

  if (!ignored &&
   (entry->mode == GIT_FILEMODE_TREE ||
    entry->mode == GIT_FILEMODE_COMMIT))
  {

   cl_git_pass(git_iterator_advance_into(&entry, i));
  } else {
   int error = git_iterator_advance(&entry, i);
   cl_assert(!error || error == GIT_ITEROVER);
  }
 }

 cl_assert(expected[idx].path == ((void*)0));

 git_iterator_free(i);
}
