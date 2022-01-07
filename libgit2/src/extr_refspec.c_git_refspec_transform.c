
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* dst; int src; int pattern; } ;
typedef TYPE_1__ git_refspec ;
typedef int git_buf ;


 int GIT_ERROR_INVALID ;
 int assert (int ) ;
 int git_buf_puts (int *,char*) ;
 int git_buf_sanitize (int *) ;
 int git_error_set (int ,char*,char const*) ;
 int git_refspec_src_matches (TYPE_1__ const*,char const*) ;
 int refspec_transform (int *,int ,char*,char const*) ;

int git_refspec_transform(git_buf *out, const git_refspec *spec, const char *name)
{
 assert(out && spec && name);
 git_buf_sanitize(out);

 if (!git_refspec_src_matches(spec, name)) {
  git_error_set(GIT_ERROR_INVALID, "ref '%s' doesn't match the source", name);
  return -1;
 }

 if (!spec->pattern)
  return git_buf_puts(out, spec->dst ? spec->dst : "");

 return refspec_transform(out, spec->src, spec->dst, name);
}
