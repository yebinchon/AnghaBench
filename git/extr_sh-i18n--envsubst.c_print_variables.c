
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_variables (char const*,int *) ;
 int print_variable ;

__attribute__((used)) static void
print_variables (const char *string)
{
  find_variables (string, &print_variable);
}
