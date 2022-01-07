
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_data {int * value; int preg; int orig_name; int buf; } ;


 int git_buf_printf (int ,char*,int ,char const*,int *,char const*) ;
 char* quotes_for_value (int *) ;

__attribute__((used)) static int write_value(struct write_data *write_data)
{
 const char *q;
 int result;

 q = quotes_for_value(write_data->value);
 result = git_buf_printf(write_data->buf,
  "\t%s = %s%s%s\n", write_data->orig_name, q, write_data->value, q);





 if (!write_data->preg)
  write_data->value = ((void*)0);

 return result;
}
