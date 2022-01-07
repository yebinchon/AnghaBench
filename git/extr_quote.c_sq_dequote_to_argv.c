
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sq_dequote_to_argv_internal (char*,char const***,int*,int*,int *) ;

int sq_dequote_to_argv(char *arg, const char ***argv, int *nr, int *alloc)
{
 return sq_dequote_to_argv_internal(arg, argv, nr, alloc, ((void*)0));
}
