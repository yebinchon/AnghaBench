
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int assert (int ) ;
 int git_buf_put (int *,char const*,int) ;
 int git_buf_putc (int *,char) ;
 int git_buf_puts (int *,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void format_header_field(git_buf *out, const char *field, const char *content)
{
 const char *lf;

 assert(out && field && content);

 git_buf_puts(out, field);
 git_buf_putc(out, ' ');

 while ((lf = strchr(content, '\n')) != ((void*)0)) {
  git_buf_put(out, content, lf - content);
  git_buf_puts(out, "\n ");
  content = lf + 1;
 }

 git_buf_puts(out, content);
 git_buf_putc(out, '\n');
}
