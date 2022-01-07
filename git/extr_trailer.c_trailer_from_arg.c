
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_item {int * value; int token; } ;
struct arg_item {int * value; int token; } ;


 int free_arg_item (struct arg_item*) ;
 struct trailer_item* xcalloc (int,int) ;

__attribute__((used)) static struct trailer_item *trailer_from_arg(struct arg_item *arg_tok)
{
 struct trailer_item *new_item = xcalloc(sizeof(*new_item), 1);
 new_item->token = arg_tok->token;
 new_item->value = arg_tok->value;
 arg_tok->token = arg_tok->value = ((void*)0);
 free_arg_item(arg_tok);
 return new_item;
}
