
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_super_prefix () ;

__attribute__((used)) static const char *get_super_prefix_or_empty(void)
{
 const char *s = get_super_prefix();
 if (!s)
  s = "";
 return s;
}
