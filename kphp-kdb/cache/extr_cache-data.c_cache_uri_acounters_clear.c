
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;


 size_t acounter_off ;
 int acounters_size ;
 int memset (int *,int ,int ) ;

void cache_uri_acounters_clear (struct cache_uri *U) {
  memset (&U->data[acounter_off], 0, acounters_size);
}
