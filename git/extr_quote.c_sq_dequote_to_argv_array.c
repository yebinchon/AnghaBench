
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int sq_dequote_to_argv_internal (char*,int *,int *,int *,struct argv_array*) ;

int sq_dequote_to_argv_array(char *arg, struct argv_array *array)
{
 return sq_dequote_to_argv_internal(arg, ((void*)0), ((void*)0), ((void*)0), array);
}
