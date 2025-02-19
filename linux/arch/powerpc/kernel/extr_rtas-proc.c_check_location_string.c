
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int check_location (struct seq_file*,char const*) ;
 scalar_t__ isalpha (char const) ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void check_location_string(struct seq_file *m, const char *c)
{
 while (*c) {
  if (isalpha(*c) || *c == '.')
   check_location(m, c);
  else if (*c == '/' || *c == '-')
   seq_printf(m, " at ");
  c++;
 }
}
