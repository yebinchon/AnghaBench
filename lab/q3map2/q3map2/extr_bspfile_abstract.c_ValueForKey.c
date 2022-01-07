
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* value; int key; struct TYPE_4__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_5__ {TYPE_1__* epairs; } ;
typedef TYPE_2__ entity_t ;


 int EPAIR_STRCMP (int ,char const*) ;

const char *ValueForKey( const entity_t *ent, const char *key ){
 epair_t *ep;



 if ( ent == ((void*)0) ) {
  return "";
 }


 for ( ep = ent->epairs; ep != ((void*)0); ep = ep->next )
 {
  if ( !EPAIR_STRCMP( ep->key, key ) ) {
   return ep->value;
  }
 }


 return "";
}
