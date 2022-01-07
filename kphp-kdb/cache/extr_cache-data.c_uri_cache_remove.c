
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;


 TYPE_1__** URI_CACHE ;
 unsigned int compute_uri_cache_slot (char const* const) ;
 int strcmp (char const* const,int *) ;
 size_t uri_off ;

__attribute__((used)) static void uri_cache_remove (const char *const uri) {
  const unsigned cache_slot = compute_uri_cache_slot (uri);
  if (URI_CACHE[cache_slot] && !strcmp (uri, &URI_CACHE[cache_slot]->data[uri_off])) {
    URI_CACHE[cache_slot] = ((void*)0);
  }
}
