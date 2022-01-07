
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_clear (int *) ;
 int git_buf_put (int *,char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static bool next_component(git_buf *out, const char *in)
{
 const char *slash = strchr(in, '/');

 git_buf_clear(out);

 if (slash)
  git_buf_put(out, in, slash - in);

 return !!slash;
}
