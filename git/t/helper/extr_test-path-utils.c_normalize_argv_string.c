
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void normalize_argv_string(const char **var, const char *input)
{
 if (!strcmp(input, "<null>"))
  *var = ((void*)0);
 else if (!strcmp(input, "<empty>"))
  *var = "";
 else
  *var = input;

 if (*var && (**var == '<' || **var == '('))
  die("Bad value: %s\n", input);
}
