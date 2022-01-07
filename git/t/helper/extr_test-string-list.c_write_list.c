
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;


 int printf (char*,int,char*) ;

__attribute__((used)) static void write_list(const struct string_list *list)
{
 int i;
 for (i = 0; i < list->nr; i++)
  printf("[%d]: \"%s\"\n", i, list->items[i].string);
}
