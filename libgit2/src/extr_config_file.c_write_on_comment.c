
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_data {int buffered_comment; } ;
typedef int git_config_parser ;


 int GIT_UNUSED (int *) ;
 int write_line_to (int *,char const*,size_t) ;

__attribute__((used)) static int write_on_comment(git_config_parser *reader, const char *line, size_t line_len, void *data)
{
 struct write_data *write_data;

 GIT_UNUSED(reader);

 write_data = (struct write_data *)data;
 return write_line_to(&write_data->buffered_comment, line, line_len);
}
