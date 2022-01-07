
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * namespace; } ;
typedef TYPE_1__ git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_MKDIR_PATH ;
 int git__free (char*) ;
 char* git__strdup (int *) ;
 char* git__strsep (char**,char*) ;
 int git_buf_cstr (int *) ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char*) ;
 int git_buf_puts (int *,char const*) ;
 int git_buf_rtruncate_at_char (int *,char) ;
 scalar_t__ git_futils_mkdir_relative (int ,char const*,int,int ,int *) ;

__attribute__((used)) static char *setup_namespace(git_repository *repo, const char *in)
{
 git_buf path = GIT_BUF_INIT;
 char *parts, *start, *end, *out = ((void*)0);

 if (!in)
  goto done;

 git_buf_puts(&path, in);


 if (repo->namespace == ((void*)0)) {
  out = git_buf_detach(&path);
  goto done;
 }

 parts = end = git__strdup(repo->namespace);
 if (parts == ((void*)0))
  goto done;







 while ((start = git__strsep(&end, "/")) != ((void*)0))
  git_buf_printf(&path, "refs/namespaces/%s/", start);

 git_buf_printf(&path, "refs/namespaces/%s/refs", end);
 git__free(parts);


 if (git_futils_mkdir_relative(git_buf_cstr(&path), in, 0777,
   GIT_MKDIR_PATH, ((void*)0)) < 0)
  goto done;


 git_buf_rtruncate_at_char(&path, '/');
 out = git_buf_detach(&path);

done:
 git_buf_dispose(&path);
 return out;
}
