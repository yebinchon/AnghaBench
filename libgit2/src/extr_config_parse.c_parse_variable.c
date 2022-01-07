
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int line_len; int line; } ;
struct TYPE_6__ {TYPE_5__ ctx; } ;
typedef TYPE_1__ git_config_parser ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int git__free (char*) ;
 scalar_t__ git__isspace (char const) ;
 char* git__strndup (int ,int ) ;
 int git_buf_attach (int *,char*,int ) ;
 char* git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_parse_advance_ws (TYPE_5__*) ;
 scalar_t__ parse_multiline_variable (TYPE_1__*,int *,int) ;
 int parse_name (char**,char const**,TYPE_1__*,char*) ;
 int strip_comments (char*,int ) ;
 int unescape_line (char**,int*,char const*,int ) ;

__attribute__((used)) static int parse_variable(git_config_parser *reader, char **var_name, char **var_value)
{
 const char *value_start = ((void*)0);
 char *line = ((void*)0), *name = ((void*)0), *value = ((void*)0);
 int quote_count, error;
 bool multiline;

 *var_name = ((void*)0);
 *var_value = ((void*)0);

 git_parse_advance_ws(&reader->ctx);
 line = git__strndup(reader->ctx.line, reader->ctx.line_len);
 GIT_ERROR_CHECK_ALLOC(line);

 quote_count = strip_comments(line, 0);

 if ((error = parse_name(&name, &value_start, reader, line)) < 0)
  goto out;




 if (value_start != ((void*)0)) {
  while (git__isspace(value_start[0]))
   value_start++;

  if ((error = unescape_line(&value, &multiline, value_start, 0)) < 0)
   goto out;

  if (multiline) {
   git_buf multi_value = GIT_BUF_INIT;
   git_buf_attach(&multi_value, value, 0);
   value = ((void*)0);

   if (parse_multiline_variable(reader, &multi_value, quote_count) < 0 ||
       git_buf_oom(&multi_value)) {
    error = -1;
    git_buf_dispose(&multi_value);
    goto out;
   }

   value = git_buf_detach(&multi_value);
  }
 }

 *var_name = name;
 *var_value = value;
 name = ((void*)0);
 value = ((void*)0);

out:
 git__free(name);
 git__free(value);
 git__free(line);
 return error;
}
