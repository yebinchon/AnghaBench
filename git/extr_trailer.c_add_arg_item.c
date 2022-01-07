
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct new_trailer_item {scalar_t__ where; scalar_t__ if_exists; scalar_t__ if_missing; } ;
struct list_head {int dummy; } ;
struct conf_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ where; scalar_t__ if_exists; scalar_t__ if_missing; } ;
struct arg_item {char* token; char* value; int list; TYPE_1__ conf; } ;


 scalar_t__ EXISTS_DEFAULT ;
 scalar_t__ MISSING_DEFAULT ;
 scalar_t__ WHERE_DEFAULT ;
 int duplicate_conf (TYPE_1__*,struct conf_info const*) ;
 int list_add_tail (int *,struct list_head*) ;
 struct arg_item* xcalloc (int,int) ;

__attribute__((used)) static void add_arg_item(struct list_head *arg_head, char *tok, char *val,
    const struct conf_info *conf,
    const struct new_trailer_item *new_trailer_item)
{
 struct arg_item *new_item = xcalloc(sizeof(*new_item), 1);
 new_item->token = tok;
 new_item->value = val;
 duplicate_conf(&new_item->conf, conf);
 if (new_trailer_item) {
  if (new_trailer_item->where != WHERE_DEFAULT)
   new_item->conf.where = new_trailer_item->where;
  if (new_trailer_item->if_exists != EXISTS_DEFAULT)
   new_item->conf.if_exists = new_trailer_item->if_exists;
  if (new_trailer_item->if_missing != MISSING_DEFAULT)
   new_item->conf.if_missing = new_trailer_item->if_missing;
 }
 list_add_tail(&new_item->list, arg_head);
}
