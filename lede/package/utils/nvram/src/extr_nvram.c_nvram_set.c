
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {struct TYPE_8__* next; int name; } ;
typedef TYPE_1__ nvram_tuple_t ;
struct TYPE_9__ {TYPE_1__** nvram_hash; TYPE_1__* nvram_dead; } ;
typedef TYPE_2__ nvram_handle_t ;


 size_t NVRAM_ARRAYSIZE (TYPE_1__**) ;
 TYPE_1__* _nvram_realloc (TYPE_2__*,TYPE_1__*,char const*,char const*) ;
 size_t hash (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

int nvram_set(nvram_handle_t *h, const char *name, const char *value)
{
 uint32_t i;
 nvram_tuple_t *t, *u, **prev;


 i = hash(name) % NVRAM_ARRAYSIZE(h->nvram_hash);


 for (prev = &h->nvram_hash[i], t = *prev;
   t && strcmp(t->name, name); prev = &t->next, t = *prev);


 if (!(u = _nvram_realloc(h, t, name, value)))
  return -12;


 if (t && t == u)
  return 0;


 if (t) {
  *prev = t->next;
  t->next = h->nvram_dead;
  h->nvram_dead = t;
 }


 u->next = h->nvram_hash[i];
 h->nvram_hash[i] = u;

 return 0;
}
