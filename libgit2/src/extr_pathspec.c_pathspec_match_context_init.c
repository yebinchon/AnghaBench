
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_match_context {int wildmatch_flags; int strncomp; int strcomp; } ;


 int WM_CASEFOLD ;
 int git__strcasecmp ;
 int git__strcmp ;
 int git__strncasecmp ;
 int git__strncmp ;

__attribute__((used)) static void pathspec_match_context_init(
 struct pathspec_match_context *ctxt,
 bool disable_fnmatch,
 bool casefold)
{
 if (disable_fnmatch)
  ctxt->wildmatch_flags = -1;
 else if (casefold)
  ctxt->wildmatch_flags = WM_CASEFOLD;
 else
  ctxt->wildmatch_flags = 0;

 if (casefold) {
  ctxt->strcomp = git__strcasecmp;
  ctxt->strncomp = git__strncasecmp;
 } else {
  ctxt->strcomp = git__strcmp;
  ctxt->strncomp = git__strncmp;
 }
}
