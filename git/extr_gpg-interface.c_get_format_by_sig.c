
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpg_format {scalar_t__* sigs; } ;


 int ARRAY_SIZE (struct gpg_format*) ;
 struct gpg_format* gpg_format ;
 scalar_t__ starts_with (char const*,scalar_t__) ;

__attribute__((used)) static struct gpg_format *get_format_by_sig(const char *sig)
{
 int i, j;

 for (i = 0; i < ARRAY_SIZE(gpg_format); i++)
  for (j = 0; gpg_format[i].sigs[j]; j++)
   if (starts_with(sig, gpg_format[i].sigs[j]))
    return gpg_format + i;
 return ((void*)0);
}
