
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_printf (int *,char*) ;
 int git_buf_put (int *,char const*,size_t) ;

__attribute__((used)) static int write_line_to(git_buf *buf, const char *line, size_t line_len)
{
 int result = git_buf_put(buf, line, line_len);

 if (!result && line_len && line[line_len-1] != '\n')
  result = git_buf_printf(buf, "\n");

 return result;
}
