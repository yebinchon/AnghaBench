
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* value; struct TYPE_3__* next; } ;
typedef TYPE_1__ nvram_tuple_t ;
typedef int nvram_handle_t ;


 TYPE_1__* nvram_getall (int *) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static int do_show(nvram_handle_t *nvram)
{
 nvram_tuple_t *t;
 int stat = 1;

 if( (t = nvram_getall(nvram)) != ((void*)0) )
 {
  while( t )
  {
   printf("%s=%s\n", t->name, t->value);
   t = t->next;
  }

  stat = 0;
 }

 return stat;
}
