
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int dummy; } ;
struct chan_opts {int dummy; } ;


 int EINVAL ;
 int setup_one_line (struct line*,int,char*,struct chan_opts const*,char**) ;
 int simple_strtoul (char*,char**,int ) ;

int line_config(struct line *lines, unsigned int num, char *str,
  const struct chan_opts *opts, char **error_out)
{
 char *end;
 int n;

 if (*str == '=') {
  *error_out = "Can't configure all devices from mconsole";
  return -EINVAL;
 }

 n = simple_strtoul(str, &end, 0);
 if (*end++ != '=') {
  *error_out = "Couldn't parse device number";
  return -EINVAL;
 }
 if (n >= num) {
  *error_out = "Device number out of range";
  return -EINVAL;
 }

 return setup_one_line(lines, n, end, opts, error_out);
}
