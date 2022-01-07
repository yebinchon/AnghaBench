
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* key; char const* name; } ;
struct arg_item {TYPE_1__ conf; } ;



__attribute__((used)) static const char *token_from_item(struct arg_item *item, char *tok)
{
 if (item->conf.key)
  return item->conf.key;
 if (tok)
  return tok;
 return item->conf.name;
}
