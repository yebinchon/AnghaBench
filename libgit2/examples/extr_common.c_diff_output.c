
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ origin; int content_len; int content; } ;
typedef TYPE_1__ git_diff_line ;
typedef int git_diff_hunk ;
typedef int git_diff_delta ;
typedef int FILE ;


 scalar_t__ GIT_DIFF_LINE_ADDITION ;
 scalar_t__ GIT_DIFF_LINE_CONTEXT ;
 scalar_t__ GIT_DIFF_LINE_DELETION ;
 int fputc (scalar_t__,int *) ;
 int fwrite (int ,int,int ,int *) ;
 int * stdout ;

int diff_output(
 const git_diff_delta *d,
 const git_diff_hunk *h,
 const git_diff_line *l,
 void *p)
{
 FILE *fp = (FILE*)p;

 (void)d; (void)h;

 if (!fp)
  fp = stdout;

 if (l->origin == GIT_DIFF_LINE_CONTEXT ||
  l->origin == GIT_DIFF_LINE_ADDITION ||
  l->origin == GIT_DIFF_LINE_DELETION)
  fputc(l->origin, fp);

 fwrite(l->content, 1, l->content_len, fp);

 return 0;
}
