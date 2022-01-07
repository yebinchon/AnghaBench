
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_diff_options ;
struct TYPE_5__ {char* ptr; void* size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int apply_gitbuf (TYPE_1__*,char const*,TYPE_1__*,char const*,char const*,int const*) ;
 void* strlen (char const*) ;

__attribute__((used)) static int apply_buf(
 const char *old,
 const char *oldname,
 const char *new,
 const char *newname,
 const char *patch_expected,
 const git_diff_options *diff_opts)
{
 git_buf o = GIT_BUF_INIT, n = GIT_BUF_INIT,
  *optr = ((void*)0), *nptr = ((void*)0);

 if (old) {
  o.ptr = (char *)old;
  o.size = strlen(old);
  optr = &o;
 }

 if (new) {
  n.ptr = (char *)new;
  n.size = strlen(new);
  nptr = &n;
 }

 return apply_gitbuf(optr, oldname, nptr, newname, patch_expected, diff_opts);
}
