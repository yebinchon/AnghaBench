
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int util; } ;


 int free (int ) ;

__attribute__((used)) static void free_rerere_id(struct string_list_item *item)
{
 free(item->util);
}
