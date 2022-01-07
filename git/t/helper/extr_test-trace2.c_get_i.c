
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int MyError ;
 int MyOk ;
 scalar_t__ errno ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int get_i(int *p_value, const char *data)
{
 char *endptr;

 if (!data || !*data)
  return MyError;

 *p_value = strtol(data, &endptr, 10);
 if (*endptr || errno == ERANGE)
  return MyError;

 return MyOk;
}
