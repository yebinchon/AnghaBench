
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flags; int re; } ;
typedef TYPE_1__ git_diff_driver_pattern ;
struct TYPE_11__ {int fn_patterns; } ;
typedef TYPE_2__ git_diff_driver ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int REG_NEGATE ;
 TYPE_1__* git_array_alloc (int ) ;
 int git_array_pop (int ) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_set (TYPE_3__*,char const*,int) ;
 int git_buf_sets (TYPE_3__*,char const*) ;
 int git_regexp_compile (int *,int ,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int diff_driver_add_patterns(
 git_diff_driver *drv, const char *regex_str, int regex_flags)
{
 int error = 0;
 const char *scan, *end;
 git_diff_driver_pattern *pat = ((void*)0);
 git_buf buf = GIT_BUF_INIT;

 for (scan = regex_str; scan; scan = end) {

  if ((pat = git_array_alloc(drv->fn_patterns)) == ((void*)0)) {
   return -1;
  }

  pat->flags = regex_flags;
  if (*scan == '!') {
   pat->flags |= REG_NEGATE;
   ++scan;
  }

  if ((end = strchr(scan, '\n')) != ((void*)0)) {
   error = git_buf_set(&buf, scan, end - scan);
   end++;
  } else {
   error = git_buf_sets(&buf, scan);
  }
  if (error < 0)
   break;

  if ((error = git_regexp_compile(&pat->re, buf.ptr, regex_flags)) != 0) {



  }
 }

 if (error && pat != ((void*)0))
  (void)git_array_pop(drv->fn_patterns);
 git_buf_dispose(&buf);


 return 0;
}
