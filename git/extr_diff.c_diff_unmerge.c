
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int prefix_length; scalar_t__ prefix; } ;
struct diff_filespec {int dummy; } ;
struct diff_filepair {int is_unmerged; } ;


 struct diff_filespec* alloc_filespec (char const*) ;
 struct diff_filepair* diff_queue (int *,struct diff_filespec*,struct diff_filespec*) ;
 int diff_queued_diff ;
 scalar_t__ strncmp (char const*,scalar_t__,int ) ;

struct diff_filepair *diff_unmerge(struct diff_options *options, const char *path)
{
 struct diff_filepair *pair;
 struct diff_filespec *one, *two;

 if (options->prefix &&
     strncmp(path, options->prefix, options->prefix_length))
  return ((void*)0);

 one = alloc_filespec(path);
 two = alloc_filespec(path);
 pair = diff_queue(&diff_queued_diff, one, two);
 pair->is_unmerged = 1;
 return pair;
}
