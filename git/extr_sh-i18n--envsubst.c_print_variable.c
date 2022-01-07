
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (char const*,size_t,int,int ) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void
print_variable (const char *var_ptr, size_t var_len)
{
  fwrite (var_ptr, var_len, 1, stdout);
  putchar ('\n');
}
