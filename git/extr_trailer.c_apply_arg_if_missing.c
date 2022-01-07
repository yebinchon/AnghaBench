
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trailer_item {int list; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int if_missing; int where; } ;
struct arg_item {TYPE_1__ conf; } ;
typedef enum trailer_where { ____Placeholder_trailer_where } trailer_where ;


 int BUG (char*,int) ;


 int after_or_end (int) ;
 int apply_item_command (int *,struct arg_item*) ;
 int free_arg_item (struct arg_item*) ;
 int list_add (int *,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 struct trailer_item* trailer_from_arg (struct arg_item*) ;

__attribute__((used)) static void apply_arg_if_missing(struct list_head *head,
     struct arg_item *arg_tok)
{
 enum trailer_where where;
 struct trailer_item *to_add;

 switch (arg_tok->conf.if_missing) {
 case 128:
  free_arg_item(arg_tok);
  break;
 case 129:
  where = arg_tok->conf.where;
  apply_item_command(((void*)0), arg_tok);
  to_add = trailer_from_arg(arg_tok);
  if (after_or_end(where))
   list_add_tail(&to_add->list, head);
  else
   list_add(&to_add->list, head);
  break;
 default:
  BUG("trailer.c: unhandled value %d",
      arg_tok->conf.if_missing);
 }
}
