
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int dummy; } ;


 scalar_t__ kstrtoul (char*,int ,unsigned long*) ;
 char* uml_vector_fetch_arg (struct arglist*,char*) ;

__attribute__((used)) static bool get_ulong_param(
 struct arglist *def, char *param, unsigned long *result)
{
 char *arg = uml_vector_fetch_arg(def, param);

 if (arg != ((void*)0)) {
  if (kstrtoul(arg, 0, result) == 0)
   return 1;
  return 1;
 }
 return 0;
}
