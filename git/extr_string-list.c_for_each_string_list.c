
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int nr; int * items; } ;
typedef int (* string_list_each_func_t ) (int *,void*) ;



int for_each_string_list(struct string_list *list,
    string_list_each_func_t fn, void *cb_data)
{
 int i, ret = 0;
 for (i = 0; i < list->nr; i++)
  if ((ret = fn(&list->items[i], cb_data)))
   break;
 return ret;
}
