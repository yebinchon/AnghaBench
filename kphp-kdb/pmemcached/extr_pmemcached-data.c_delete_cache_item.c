
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int dummy; } ;


 struct entry* cache ;
 int cache_deletes ;
 int cache_free ;
 size_t* cache_next ;
 size_t* cache_prev ;
 int* cache_stack ;
 int del_cache_use (int) ;
 int fprintf (int ,char*) ;
 int free_cache_item (struct entry*) ;
 int stderr ;
 int verbosity ;

void delete_cache_item (int n) {
  if (verbosity >= 4) { fprintf (stderr, "delete_cache_item\n"); }
  struct entry* entry = cache + n;
  free_cache_item (entry);
  del_cache_use (n);
  cache_next[cache_prev[n]] = cache_next[n];
  cache_prev[cache_next[n]] = cache_prev[n];
  cache_stack[cache_free++] = n;
  cache_deletes ++;
}
