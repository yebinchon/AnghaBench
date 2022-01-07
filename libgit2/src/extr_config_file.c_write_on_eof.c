
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int ptr; } ;
struct write_data {int orig_section; int buf; int section; scalar_t__ value; int preg_replaced; int preg; TYPE_1__ buffered_comment; } ;
typedef int git_config_parser ;


 int GIT_UNUSED (int *) ;
 int git_buf_put (int ,int ,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int write_section (int ,int ) ;
 int write_value (struct write_data*) ;

__attribute__((used)) static int write_on_eof(
 git_config_parser *reader, const char *current_section, void *data)
{
 struct write_data *write_data = (struct write_data *)data;
 int result = 0;

 GIT_UNUSED(reader);




 if ((result = git_buf_put(write_data->buf, write_data->buffered_comment.ptr, write_data->buffered_comment.size)) < 0)
  return result;






 if ((!write_data->preg || !write_data->preg_replaced) && write_data->value) {

  if (!current_section || strcmp(current_section, write_data->section))
   result = write_section(write_data->buf, write_data->orig_section);

  if (!result)
   result = write_value(write_data);
 }

 return result;
}
