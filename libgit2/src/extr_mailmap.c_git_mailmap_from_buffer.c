
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_mailmap ;


 int git_mailmap_free (int *) ;
 int git_mailmap_new (int **) ;
 int mailmap_add_buffer (int *,char const*,size_t) ;

int git_mailmap_from_buffer(git_mailmap **out, const char *data, size_t len)
{
 int error = git_mailmap_new(out);
 if (error < 0)
  return error;

 error = mailmap_add_buffer(*out, data, len);
 if (error < 0) {
  git_mailmap_free(*out);
  *out = ((void*)0);
 }
 return error;
}
