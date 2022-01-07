
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int src; int dst; int pattern; } ;
typedef TYPE_1__ git_refspec ;
typedef int git_buf ;


 int GIT_ERROR_INVALID ;
 int assert (int ) ;
 int git_buf_puts (int *,int ) ;
 int git_buf_sanitize (int *) ;
 int git_error_set (int ,char*,char const*) ;
 int git_refspec_dst_matches (TYPE_1__ const*,char const*) ;
 int refspec_transform (int *,int ,int ,char const*) ;

int git_refspec_rtransform(git_buf *out, const git_refspec *spec, const char *name)
{
 assert(out && spec && name);
 git_buf_sanitize(out);

 if (!git_refspec_dst_matches(spec, name)) {
  git_error_set(GIT_ERROR_INVALID, "ref '%s' doesn't match the destination", name);
  return -1;
 }

 if (!spec->pattern)
  return git_buf_puts(out, spec->src);

 return refspec_transform(out, spec->dst, spec->src, name);
}
