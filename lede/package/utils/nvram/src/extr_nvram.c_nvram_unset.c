
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {struct TYPE_5__* next; int name; } ;
typedef TYPE_1__ nvram_tuple_t ;
struct TYPE_6__ {TYPE_1__* nvram_dead; TYPE_1__** nvram_hash; } ;
typedef TYPE_2__ nvram_handle_t ;


 size_t NVRAM_ARRAYSIZE (TYPE_1__**) ;
 size_t hash (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

int nvram_unset(nvram_handle_t *h, const char *name)
{
 uint32_t i;
 nvram_tuple_t *t, **prev;

 if (!name)
  return 0;


 i = hash(name) % NVRAM_ARRAYSIZE(h->nvram_hash);


 for (prev = &h->nvram_hash[i], t = *prev;
   t && strcmp(t->name, name); prev = &t->next, t = *prev);


 if (t) {
  *prev = t->next;
  t->next = h->nvram_dead;
  h->nvram_dead = t;
 }

 return 0;
}
