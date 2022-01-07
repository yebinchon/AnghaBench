
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refspec ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char const*) ;
 int git_error_clear () ;
 int git_refspec__dispose (int *) ;
 int git_refspec__parse (int *,int ,int) ;

int git_remote_is_valid_name(
 const char *remote_name)
{
 git_buf buf = GIT_BUF_INIT;
 git_refspec refspec;
 int error = -1;

 if (!remote_name || *remote_name == '\0')
  return 0;

 git_buf_printf(&buf, "refs/heads/test:refs/remotes/%s/test", remote_name);
 error = git_refspec__parse(&refspec, git_buf_cstr(&buf), 1);

 git_buf_dispose(&buf);
 git_refspec__dispose(&refspec);

 git_error_clear();
 return error == 0;
}
