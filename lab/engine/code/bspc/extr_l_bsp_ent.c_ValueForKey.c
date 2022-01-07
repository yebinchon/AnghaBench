
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* value; int key; struct TYPE_4__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_5__ {TYPE_1__* epairs; } ;
typedef TYPE_2__ entity_t ;


 int strcmp (int ,char*) ;

char *ValueForKey (entity_t *ent, char *key)
{
 epair_t *ep;

 for (ep=ent->epairs ; ep ; ep=ep->next)
  if (!strcmp (ep->key, key) )
   return ep->value;
 return "";
}
