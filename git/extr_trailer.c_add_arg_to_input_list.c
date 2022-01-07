
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trailer_item {int list; } ;
struct TYPE_2__ {int where; } ;
struct arg_item {TYPE_1__ conf; } ;


 int after_or_end (int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 struct trailer_item* trailer_from_arg (struct arg_item*) ;

__attribute__((used)) static void add_arg_to_input_list(struct trailer_item *on_tok,
      struct arg_item *arg_tok)
{
 int aoe = after_or_end(arg_tok->conf.where);
 struct trailer_item *to_add = trailer_from_arg(arg_tok);
 if (aoe)
  list_add(&to_add->list, &on_tok->list);
 else
  list_add_tail(&to_add->list, &on_tok->list);
}
