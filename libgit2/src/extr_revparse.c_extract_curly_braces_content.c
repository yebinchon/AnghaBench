
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_EINVALIDSPEC ;
 int assert (int) ;
 int git_buf_clear (int *) ;
 int git_buf_putc (int *,char const) ;

__attribute__((used)) static int extract_curly_braces_content(git_buf *buf, const char *spec, size_t *pos)
{
 git_buf_clear(buf);

 assert(spec[*pos] == '^' || spec[*pos] == '@');

 (*pos)++;

 if (spec[*pos] == '\0' || spec[*pos] != '{')
  return GIT_EINVALIDSPEC;

 (*pos)++;

 while (spec[*pos] != '}') {
  if (spec[*pos] == '\0')
   return GIT_EINVALIDSPEC;

  git_buf_putc(buf, spec[(*pos)++]);
 }

 (*pos)++;

 return 0;
}
