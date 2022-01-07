
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ find_device (int) ;
 int kstrtouint (char*,int ,int*) ;
 int strlen (char*) ;

__attribute__((used)) static int vector_parse(char *str, int *index_out, char **str_out,
   char **error_out)
{
 int n, len, err;
 char *start = str;

 len = strlen(str);

 while ((*str != ':') && (strlen(str) > 1))
  str++;
 if (*str != ':') {
  *error_out = "Expected ':' after device number";
  return -EINVAL;
 }
 *str = '\0';

 err = kstrtouint(start, 0, &n);
 if (err < 0) {
  *error_out = "Bad device number";
  return err;
 }

 str++;
 if (find_device(n)) {
  *error_out = "Device already configured";
  return -EINVAL;
 }

 *index_out = n;
 *str_out = str;
 return 0;
}
