
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int fprintf (int ,char*,char*) ;
 char* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_putc (int *,char) ;
 int * git_reflog_entry_byindex (int *,size_t) ;
 size_t git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int *,char const*) ;
 int reflog_entry_tostr (int *,int const*) ;
 int stderr ;

void reflog_print(git_repository *repo, const char *reflog_name)
{
 git_reflog *reflog;
 size_t idx;
 git_buf out = GIT_BUF_INIT;

 git_reflog_read(&reflog, repo, reflog_name);

 for (idx = 0; idx < git_reflog_entrycount(reflog); idx++) {
  const git_reflog_entry *entry = git_reflog_entry_byindex(reflog, idx);
  reflog_entry_tostr(&out, entry);
  git_buf_putc(&out, '\n');
 }

 fprintf(stderr, "%s", git_buf_cstr(&out));
 git_buf_dispose(&out);
 git_reflog_free(reflog);
}
