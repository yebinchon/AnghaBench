
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_negotiator {int dummy; } ;
struct alternate_object_cache {size_t nr; struct object** items; } ;


 int cache_one_alternate ;
 int for_each_alternate_ref (int ,struct alternate_object_cache*) ;

__attribute__((used)) static void for_each_cached_alternate(struct fetch_negotiator *negotiator,
          void (*cb)(struct fetch_negotiator *,
       struct object *))
{
 static int initialized;
 static struct alternate_object_cache cache;
 size_t i;

 if (!initialized) {
  for_each_alternate_ref(cache_one_alternate, &cache);
  initialized = 1;
 }

 for (i = 0; i < cache.nr; i++)
  cb(negotiator, cache.items[i]);
}
