
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_data {int buf; } ;


 int write_line_to (int ,char const*,size_t) ;

__attribute__((used)) static int write_line(struct write_data *write_data, const char *line, size_t line_len)
{
 return write_line_to(write_data->buf, line, line_len);
}
