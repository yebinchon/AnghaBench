
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int count; int strings; } ;
struct TYPE_10__ {int flags; char* start; char* end; TYPE_1__ pathlist; } ;
typedef TYPE_2__ git_iterator_options ;
struct TYPE_12__ {int count; int strings; } ;
struct TYPE_11__ {int flags; TYPE_4__ pathspec; } ;
typedef TYPE_3__ git_diff_options ;


 int GIT_DIFF_DISABLE_PATHSPEC_MATCH ;
 int GIT_DIFF_OPTIONS_VERSION ;
 int GIT_ERROR_CHECK_ALLOC (char**) ;
 int GIT_ERROR_CHECK_VERSION (TYPE_3__ const*,int ,char*) ;
 char* git_pathspec_prefix (TYPE_4__*) ;

__attribute__((used)) static int diff_prepare_iterator_opts(char **prefix, git_iterator_options *a, int aflags,
  git_iterator_options *b, int bflags,
  const git_diff_options *opts)
{
 GIT_ERROR_CHECK_VERSION(opts, GIT_DIFF_OPTIONS_VERSION, "git_diff_options");

 *prefix = ((void*)0);

 if (opts && (opts->flags & GIT_DIFF_DISABLE_PATHSPEC_MATCH)) {
  a->pathlist.strings = opts->pathspec.strings;
  a->pathlist.count = opts->pathspec.count;
  b->pathlist.strings = opts->pathspec.strings;
  b->pathlist.count = opts->pathspec.count;
 } else if (opts) {
  *prefix = git_pathspec_prefix(&opts->pathspec);
  GIT_ERROR_CHECK_ALLOC(prefix);
 }

 a->flags = aflags;
 b->flags = bflags;
 a->start = b->start = *prefix;
 a->end = b->end = *prefix;

 return 0;
}
