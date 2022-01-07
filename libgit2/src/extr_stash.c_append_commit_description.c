
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;
typedef int git_buf ;


 int GIT_ERROR_CHECK_ALLOC (char const*) ;
 scalar_t__ append_abbreviated_oid (int *,int ) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_putc (int *,char) ;
 int git_buf_puts (int *,char const*) ;
 int git_commit_id (int *) ;
 char* git_commit_summary (int *) ;

__attribute__((used)) static int append_commit_description(git_buf *out, git_commit* commit)
{
 const char *summary = git_commit_summary(commit);
 GIT_ERROR_CHECK_ALLOC(summary);

 if (append_abbreviated_oid(out, git_commit_id(commit)) < 0)
  return -1;

 git_buf_putc(out, ' ');
 git_buf_puts(out, summary);
 git_buf_putc(out, '\n');

 return git_buf_oom(out) ? -1 : 0;
}
