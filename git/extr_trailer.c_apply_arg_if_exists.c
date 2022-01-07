
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trailer_item {int list; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int if_exists; } ;
struct arg_item {TYPE_1__ conf; } ;


 int BUG (char*,int) ;





 int add_arg_to_input_list (struct trailer_item*,struct arg_item*) ;
 int apply_item_command (struct trailer_item*,struct arg_item*) ;
 int check_if_different (struct trailer_item*,struct arg_item*,int,struct list_head*) ;
 int free_arg_item (struct arg_item*) ;
 int free_trailer_item (struct trailer_item*) ;
 int list_del (int *) ;

__attribute__((used)) static void apply_arg_if_exists(struct trailer_item *in_tok,
    struct arg_item *arg_tok,
    struct trailer_item *on_tok,
    struct list_head *head)
{
 switch (arg_tok->conf.if_exists) {
 case 129:
  free_arg_item(arg_tok);
  break;
 case 128:
  apply_item_command(in_tok, arg_tok);
  add_arg_to_input_list(on_tok, arg_tok);
  list_del(&in_tok->list);
  free_trailer_item(in_tok);
  break;
 case 132:
  apply_item_command(in_tok, arg_tok);
  add_arg_to_input_list(on_tok, arg_tok);
  break;
 case 131:
  apply_item_command(in_tok, arg_tok);
  if (check_if_different(in_tok, arg_tok, 1, head))
   add_arg_to_input_list(on_tok, arg_tok);
  else
   free_arg_item(arg_tok);
  break;
 case 130:
  apply_item_command(in_tok, arg_tok);
  if (check_if_different(on_tok, arg_tok, 0, head))
   add_arg_to_input_list(on_tok, arg_tok);
  else
   free_arg_item(arg_tok);
  break;
 default:
  BUG("trailer.c: unhandled value %d",
      arg_tok->conf.if_exists);
 }
}
