
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* uml_strdup (char*) ;

__attribute__((used)) static inline char *cow_strdup(char *str)
{
 return uml_strdup(str);
}
