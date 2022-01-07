
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* src; char* dst; scalar_t__ force; } ;
typedef TYPE_1__ git_refspec ;
typedef int git_buf ;


 int git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,char*,char*) ;
 int git_buf_putc (int *,char) ;

int git_refspec__serialize(git_buf *out, const git_refspec *refspec)
{
 if (refspec->force)
  git_buf_putc(out, '+');

 git_buf_printf(out, "%s:%s",
  refspec->src != ((void*)0) ? refspec->src : "",
  refspec->dst != ((void*)0) ? refspec->dst : "");

 return git_buf_oom(out) == 0;
}
