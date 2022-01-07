
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_buf ;


 int assert (int) ;
 int git_buf_attach (int *,char*,int ) ;
 int git_buf_sanitize (int *) ;
 int note_get_default_ref (char**,int *) ;
 int strlen (char*) ;

int git_note_default_ref(git_buf *out, git_repository *repo)
{
 char *default_ref;
 int error;

 assert(out && repo);

 git_buf_sanitize(out);

 if ((error = note_get_default_ref(&default_ref, repo)) < 0)
  return error;

 git_buf_attach(out, default_ref, strlen(default_ref));
 return 0;
}
