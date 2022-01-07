
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 char* git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_putc (TYPE_1__*,char const) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_path_prettify_dir (TYPE_1__*,char const*,int *) ;
 int strncpy (char*,char*,int) ;

const char* cl_git_path_url(const char *path)
{
 static char url[4096];

 const char *in_buf;
 git_buf path_buf = GIT_BUF_INIT;
 git_buf url_buf = GIT_BUF_INIT;

 cl_git_pass(git_path_prettify_dir(&path_buf, path, ((void*)0)));
 cl_git_pass(git_buf_puts(&url_buf, "file://"));
 in_buf = git_buf_cstr(&path_buf);




 while (*in_buf) {
  if (*in_buf == ' ')
   cl_git_pass(git_buf_puts(&url_buf, "%20"));
  else
   cl_git_pass(git_buf_putc(&url_buf, *in_buf));

  in_buf++;
 }

 cl_assert(url_buf.size < 4096);

 strncpy(url, git_buf_cstr(&url_buf), 4096);
 git_buf_dispose(&url_buf);
 git_buf_dispose(&path_buf);
 return url;
}
