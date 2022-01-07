
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_item {struct trailer_item* value; struct trailer_item* token; } ;


 int free (struct trailer_item*) ;

__attribute__((used)) static void free_trailer_item(struct trailer_item *item)
{
 free(item->token);
 free(item->value);
 free(item);
}
