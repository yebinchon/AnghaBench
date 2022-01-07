
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; char** strings; } ;
typedef TYPE_1__ git_strarray ;


 int assert (int ) ;
 char** calloc (int,int) ;

void init_array(git_strarray *array, int argc, char **argv)
{
 unsigned int i;

 array->count = argc;
 array->strings = calloc(array->count, sizeof(char *));
 assert(array->strings != ((void*)0));

 for (i = 0; i < array->count; i++) {
  array->strings[i] = argv[i];
 }

 return;
}
