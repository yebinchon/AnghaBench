
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pathspec_match_context {scalar_t__ wildmatch_flags; scalar_t__ (* strncomp ) (char const*,int ,size_t) ;scalar_t__ (* strcomp ) (int ,char const*) ;} ;
struct TYPE_3__ {int flags; size_t length; int pattern; } ;
typedef TYPE_1__ git_attr_fnmatch ;


 int GIT_ATTR_FNMATCH_HASWILD ;
 int GIT_ATTR_FNMATCH_MATCH_ALL ;
 int GIT_ATTR_FNMATCH_NEGATIVE ;
 int WM_NOMATCH ;
 scalar_t__ stub1 (int ,char const*) ;
 scalar_t__ stub2 (char const*,int ,size_t) ;
 scalar_t__ stub3 (char const*,int ,size_t) ;
 int wildmatch (int ,char const*,scalar_t__) ;

__attribute__((used)) static int pathspec_match_one(
 const git_attr_fnmatch *match,
 struct pathspec_match_context *ctxt,
 const char *path)
{
 int result = (match->flags & GIT_ATTR_FNMATCH_MATCH_ALL) ? 0 : WM_NOMATCH;

 if (result == WM_NOMATCH)
  result = ctxt->strcomp(match->pattern, path) ? WM_NOMATCH : 0;

 if (ctxt->wildmatch_flags >= 0 && result == WM_NOMATCH)
  result = wildmatch(match->pattern, path, ctxt->wildmatch_flags);


 if (result == WM_NOMATCH &&
  (match->flags & GIT_ATTR_FNMATCH_HASWILD) == 0 &&
  ctxt->strncomp(path, match->pattern, match->length) == 0 &&
  path[match->length] == '/')
  result = 0;




 if (result == WM_NOMATCH &&
  (match->flags & GIT_ATTR_FNMATCH_NEGATIVE) != 0 &&
  *path == '!' &&
  ctxt->strncomp(path + 1, match->pattern, match->length) == 0 &&
  (!path[match->length + 1] || path[match->length + 1] == '/'))
  return 1;

 if (result == 0)
  return (match->flags & GIT_ATTR_FNMATCH_NEGATIVE) ? 0 : 1;
 return -1;
}
