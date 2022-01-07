
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int string; } ;
typedef TYPE_1__ token_t ;
typedef int script_t ;
typedef int qboolean ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_2__ epair_t ;
struct TYPE_9__ {TYPE_2__* epairs; } ;
typedef TYPE_3__ entity_t ;


 int Error (char*) ;
 size_t MAX_MAP_ENTITIES ;
 int PS_ReadToken (int *,TYPE_1__*) ;
 int PS_UnreadLastToken (int *) ;
 TYPE_2__* ParseEpair (int *) ;
 TYPE_3__* entities ;
 size_t num_entities ;
 scalar_t__ strcmp (int ,char*) ;

qboolean ParseEntity(script_t *script)
{
 epair_t *e;
 entity_t *mapent;
 token_t token;

 if (!PS_ReadToken(script, &token))
  return 0;

 if (strcmp(token.string, "{"))
  Error ("ParseEntity: { not found");

 if (num_entities == MAX_MAP_ENTITIES)
  Error ("num_entities == MAX_MAP_ENTITIES");

 mapent = &entities[num_entities];
 num_entities++;

 do
 {
  if (!PS_ReadToken(script, &token))
   Error ("ParseEntity: EOF without closing brace");
  if (!strcmp(token.string, "}") )
   break;
  PS_UnreadLastToken(script);
  e = ParseEpair(script);
  e->next = mapent->epairs;
  mapent->epairs = e;
 } while (1);

 return 1;
}
