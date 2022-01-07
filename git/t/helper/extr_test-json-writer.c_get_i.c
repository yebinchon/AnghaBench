
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 scalar_t__ ERANGE ;
 int die (char*,int) ;
 scalar_t__ errno ;
 int get_s (int,char**) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static void get_i(int line_nr, intmax_t *s_in)
{
 char *s;
 char *endptr;

 get_s(line_nr, &s);

 *s_in = strtol(s, &endptr, 10);
 if (*endptr || errno == ERANGE)
  die("line[%d]: invalid integer value", line_nr);
}
