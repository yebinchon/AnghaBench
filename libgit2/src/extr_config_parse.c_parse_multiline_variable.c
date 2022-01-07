
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int line_len; int line; } ;
struct TYPE_4__ {TYPE_3__ ctx; } ;
typedef TYPE_1__ git_config_parser ;
typedef int git_buf ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int git__free (char*) ;
 char* git__strndup (int ,int ) ;
 int git_buf_puts (int *,char*) ;
 int git_parse_advance_line (TYPE_3__*) ;
 int strip_comments (char*,int) ;
 int unescape_line (char**,int*,char*,int) ;

__attribute__((used)) static int parse_multiline_variable(git_config_parser *reader, git_buf *value, int in_quotes)
{
 int quote_count;
 bool multiline = 1;

 while (multiline) {
  char *line = ((void*)0), *proc_line = ((void*)0);
  int error;


  git_parse_advance_line(&reader->ctx);
  line = git__strndup(reader->ctx.line, reader->ctx.line_len);
  GIT_ERROR_CHECK_ALLOC(line);





  if (line[0] == '\0') {
   error = 0;
   goto out;
  }


  quote_count = strip_comments(line, !!in_quotes);
  if (line[0] == '\0')
   goto next;

  if ((error = unescape_line(&proc_line, &multiline,
        line, in_quotes)) < 0)
   goto out;


  if ((error = git_buf_puts(value, proc_line)) < 0)
   goto out;

next:
  git__free(line);
  git__free(proc_line);
  in_quotes = quote_count;
  continue;

out:
  git__free(line);
  git__free(proc_line);
  return error;
 }

 return 0;
}
