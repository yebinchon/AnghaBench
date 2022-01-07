
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct arg_item* command; struct arg_item* key; struct arg_item* name; } ;
struct arg_item {struct arg_item* value; struct arg_item* token; TYPE_1__ conf; } ;


 int free (struct arg_item*) ;

__attribute__((used)) static void free_arg_item(struct arg_item *item)
{
 free(item->conf.name);
 free(item->conf.key);
 free(item->conf.command);
 free(item->token);
 free(item->value);
 free(item);
}
