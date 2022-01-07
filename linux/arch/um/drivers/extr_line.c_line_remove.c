
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int dummy; } ;


 int EINVAL ;
 int setup_one_line (struct line*,int,char*,int *,char**) ;

int line_remove(struct line *lines, unsigned int num, int n, char **error_out)
{
 if (n >= num) {
  *error_out = "Device number out of range";
  return -EINVAL;
 }
 return setup_one_line(lines, n, "none", ((void*)0), error_out);
}
