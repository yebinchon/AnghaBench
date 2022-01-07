
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_options {TYPE_1__* repo; } ;
struct diff_filespec {int dummy; } ;
struct TYPE_2__ {int index; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_SKIP_DFCHECK ;
 scalar_t__ add_cacheinfo (struct merge_options*,struct diff_filespec const*,char const*,int,int ,int) ;
 scalar_t__ remove_file_from_index (int ,char const*) ;

__attribute__((used)) static int update_stages(struct merge_options *opt, const char *path,
    const struct diff_filespec *o,
    const struct diff_filespec *a,
    const struct diff_filespec *b)
{
 int clear = 1;
 int options = ADD_CACHE_OK_TO_ADD | ADD_CACHE_SKIP_DFCHECK;
 if (clear)
  if (remove_file_from_index(opt->repo->index, path))
   return -1;
 if (o)
  if (add_cacheinfo(opt, o, path, 1, 0, options))
   return -1;
 if (a)
  if (add_cacheinfo(opt, a, path, 2, 0, options))
   return -1;
 if (b)
  if (add_cacheinfo(opt, b, path, 3, 0, options))
   return -1;
 return 0;
}
