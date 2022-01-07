
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {struct cache* next_local; } ;



__attribute__((used)) static void link_cache_lists(struct cache *smaller, struct cache *bigger)
{
 while (smaller->next_local) {
  if (smaller->next_local == bigger)
   return;
  smaller = smaller->next_local;
 }

 smaller->next_local = bigger;
}
