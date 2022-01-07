
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int ptr; } ;
struct write_data {int preg_replaced; int value; int * preg; int name; scalar_t__ in_section; TYPE_1__ buffered_comment; int buf; } ;
typedef char const git_config_parser ;


 int GIT_UNUSED (char const*) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_put (int ,int ,int ) ;
 scalar_t__ git_regexp_match (int *,char const*) ;
 scalar_t__ strcasecmp (int ,char const*) ;
 int write_line (struct write_data*,char const*,size_t) ;
 int write_value (struct write_data*) ;

__attribute__((used)) static int write_on_variable(
 git_config_parser *reader,
 const char *current_section,
 const char *var_name,
 const char *var_value,
 const char *line,
 size_t line_len,
 void *data)
{
 struct write_data *write_data = (struct write_data *)data;
 bool has_matched = 0;
 int error;

 GIT_UNUSED(reader);
 GIT_UNUSED(current_section);




 if ((error = git_buf_put(write_data->buf, write_data->buffered_comment.ptr, write_data->buffered_comment.size)) < 0)
  return error;

 git_buf_clear(&write_data->buffered_comment);


 if (write_data->in_section &&
  strcasecmp(write_data->name, var_name) == 0)
  has_matched = 1;


 if (has_matched && write_data->preg != ((void*)0))
  has_matched = (git_regexp_match(write_data->preg, var_value) == 0);




 if (!has_matched)
  return write_line(write_data, line, line_len);

 write_data->preg_replaced = 1;


 if (!write_data->value)
  return 0;

 return write_value(write_data);
}
