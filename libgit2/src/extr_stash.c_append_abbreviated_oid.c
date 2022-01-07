
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_buf ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int git__free (char*) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_put (int *,char*,int) ;
 char* git_oid_allocfmt (int const*) ;

__attribute__((used)) static int append_abbreviated_oid(git_buf *out, const git_oid *b_commit)
{
 char *formatted_oid;

 formatted_oid = git_oid_allocfmt(b_commit);
 GIT_ERROR_CHECK_ALLOC(formatted_oid);

 git_buf_put(out, formatted_oid, 7);
 git__free(formatted_oid);

 return git_buf_oom(out) ? -1 : 0;
}
