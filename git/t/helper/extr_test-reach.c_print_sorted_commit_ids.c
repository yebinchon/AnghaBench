
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct commit_list {struct commit_list* next; TYPE_3__* item; } ;
struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;
struct TYPE_4__ {char* string; } ;


 struct string_list STRING_LIST_INIT_DUP ;
 int oid_to_hex (int *) ;
 int printf (char*,char*) ;
 int string_list_append (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;

__attribute__((used)) static void print_sorted_commit_ids(struct commit_list *list)
{
 int i;
 struct string_list s = STRING_LIST_INIT_DUP;

 while (list) {
  string_list_append(&s, oid_to_hex(&list->item->object.oid));
  list = list->next;
 }

 string_list_sort(&s);

 for (i = 0; i < s.nr; i++)
  printf("%s\n", s.items[i].string);

 string_list_clear(&s, 0);
}
