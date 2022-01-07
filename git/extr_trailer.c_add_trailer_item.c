
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_item {char* token; char* value; int list; } ;
struct list_head {int dummy; } ;


 int list_add_tail (int *,struct list_head*) ;
 struct trailer_item* xcalloc (int,int) ;

__attribute__((used)) static struct trailer_item *add_trailer_item(struct list_head *head, char *tok,
          char *val)
{
 struct trailer_item *new_item = xcalloc(sizeof(*new_item), 1);
 new_item->token = tok;
 new_item->value = val;
 list_add_tail(&new_item->list, head);
 return new_item;
}
