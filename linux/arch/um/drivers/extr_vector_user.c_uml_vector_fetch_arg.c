
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int numargs; char** values; int * tokens; } ;


 scalar_t__ strcmp (int ,char*) ;

char *uml_vector_fetch_arg(struct arglist *ifspec, char *token)
{
 int i;

 for (i = 0; i < ifspec->numargs; i++) {
  if (strcmp(ifspec->tokens[i], token) == 0)
   return ifspec->values[i];
 }
 return ((void*)0);

}
