
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int die (char*,int) ;
 scalar_t__ errno ;
 int get_s (int,char**) ;
 double strtod (char*,char**) ;

__attribute__((used)) static void get_d(int line_nr, double *s_in)
{
 char *s;
 char *endptr;

 get_s(line_nr, &s);

 *s_in = strtod(s, &endptr);
 if (*endptr || errno == ERANGE)
  die("line[%d]: invalid float value", line_nr);
}
