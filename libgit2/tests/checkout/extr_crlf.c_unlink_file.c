
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_UNUSED (void*) ;
 int cl_assert (char*) ;
 int cl_must_pass (int ) ;
 int git__free (char*) ;
 char* git_path_basename (int ) ;
 int p_unlink (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int unlink_file(void *payload, git_buf *path)
{
 char *fn;

 cl_assert(fn = git_path_basename(path->ptr));

 GIT_UNUSED(payload);

 if (strcmp(fn, ".git"))
  cl_must_pass(p_unlink(path->ptr));

 git__free(fn);
 return 0;
}
