
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct ref {int name; struct ref* next; } ;
struct TYPE_2__ {struct ref* util; } ;


 TYPE_1__* string_list_append_nodup (struct string_list*,int ) ;
 int string_list_sort (struct string_list*) ;

__attribute__((used)) static void prepare_ref_index(struct string_list *ref_index, struct ref *ref)
{
 for ( ; ref; ref = ref->next)
  string_list_append_nodup(ref_index, ref->name)->util = ref;

 string_list_sort(ref_index);
}
