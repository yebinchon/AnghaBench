
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpg_format {int name; } ;


 int ARRAY_SIZE (struct gpg_format*) ;
 struct gpg_format* gpg_format ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static struct gpg_format *get_format_by_name(const char *str)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(gpg_format); i++)
  if (!strcmp(gpg_format[i].name, str))
   return gpg_format + i;
 return ((void*)0);
}
