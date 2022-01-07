
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_iterator ;
struct TYPE_5__ {char* path; size_t mode; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_ENOTFOUND ;
 size_t GIT_FILEMODE_TREE ;
 int GIT_ITERATOR_INCLUDE_TREES ;
 int GIT_ITEROVER ;
 int assert_at_end (int *,int) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (size_t,size_t) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int git_iterator_advance (TYPE_1__ const**,int *) ;
 int git_iterator_advance_into (TYPE_1__ const**,int *) ;
 int git_iterator_current (TYPE_1__ const**,int *) ;
 int git_iterator_flags (int *) ;
 int git_iterator_reset (int *) ;
 int stderr ;
 size_t strlen (char const*) ;

void expect_iterator_items(
 git_iterator *i,
 size_t expected_flat,
 const char **expected_flat_paths,
 size_t expected_total,
 const char **expected_total_paths)
{
 const git_index_entry *entry;
 size_t count;
 int no_trees = !(git_iterator_flags(i) & GIT_ITERATOR_INCLUDE_TREES);
 bool v = 0;
 int error;

 if (v) fprintf(stderr, "== %s ==\n", no_trees ? "notrees" : "trees");

 count = 0;

 while (!git_iterator_advance(&entry, i)) {
  if (v) fprintf(stderr, "  %s %07o\n", entry->path, (int)entry->mode);

  if (no_trees)
   cl_assert(entry->mode != GIT_FILEMODE_TREE);

  if (expected_flat_paths) {
   const char *expect_path = expected_flat_paths[count];
   size_t expect_len = strlen(expect_path);

   cl_assert_equal_s(expect_path, entry->path);

   if (expect_path[expect_len - 1] == '/')
    cl_assert_equal_i(GIT_FILEMODE_TREE, entry->mode);
   else
    cl_assert(entry->mode != GIT_FILEMODE_TREE);
  }

  cl_assert(++count <= expected_flat);
 }

 assert_at_end(i, v);
 cl_assert_equal_i(expected_flat, count);

 cl_git_pass(git_iterator_reset(i));

 count = 0;
 cl_git_pass(git_iterator_current(&entry, i));

 if (v) fprintf(stderr, "-- %s --\n", no_trees ? "notrees" : "trees");

 while (entry != ((void*)0)) {
  if (v) fprintf(stderr, "  %s %07o\n", entry->path, (int)entry->mode);

  if (no_trees)
   cl_assert(entry->mode != GIT_FILEMODE_TREE);

  if (expected_total_paths) {
   const char *expect_path = expected_total_paths[count];
   size_t expect_len = strlen(expect_path);

   cl_assert_equal_s(expect_path, entry->path);

   if (expect_path[expect_len - 1] == '/')
    cl_assert_equal_i(GIT_FILEMODE_TREE, entry->mode);
   else
    cl_assert(entry->mode != GIT_FILEMODE_TREE);
  }

  if (entry->mode == GIT_FILEMODE_TREE) {
   error = git_iterator_advance_into(&entry, i);


   cl_assert(!error || error == GIT_ENOTFOUND);

   if (error == GIT_ENOTFOUND) {
    error = git_iterator_advance(&entry, i);
    cl_assert(!error || error == GIT_ITEROVER);
   }
  } else {
   error = git_iterator_advance(&entry, i);
   cl_assert(!error || error == GIT_ITEROVER);
  }

  if (++count >= expected_total)
   break;
 }

 assert_at_end(i, v);
 cl_assert_equal_i(expected_total, count);
}
