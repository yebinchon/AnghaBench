
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;


 int printf (char*,...) ;

__attribute__((used)) static void write_list_compact(const struct string_list *list)
{
 int i;
 if (!list->nr)
  printf("-\n");
 else {
  printf("%s", list->items[0].string);
  for (i = 1; i < list->nr; i++)
   printf(":%s", list->items[i].string);
  printf("\n");
 }
}
