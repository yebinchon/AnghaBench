
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int ) ;

__attribute__((used)) static void
cli_print_prefix (const char *str,
                  int len)
{
  for (int i = 0; i < len; i++)
  {
    printf ("%c", *str++);
  }
}
