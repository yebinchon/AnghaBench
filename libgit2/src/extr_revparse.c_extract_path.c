
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int assert (int) ;
 int git_buf_clear (int *) ;
 scalar_t__ git_buf_len (int *) ;
 scalar_t__ git_buf_puts (int *,char const*) ;

__attribute__((used)) static int extract_path(git_buf *buf, const char *spec, size_t *pos)
{
 git_buf_clear(buf);

 assert(spec[*pos] == ':');

 (*pos)++;

 if (git_buf_puts(buf, spec + *pos) < 0)
  return -1;

 *pos += git_buf_len(buf);

 return 0;
}
