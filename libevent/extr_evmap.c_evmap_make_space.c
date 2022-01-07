
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_signal_map {int nentries; void** entries; } ;


 int INT_MAX ;
 int memset (void**,int ,int) ;
 scalar_t__ mm_realloc (void**,int) ;

__attribute__((used)) static int
evmap_make_space(struct event_signal_map *map, int slot, int msize)
{
 if (map->nentries <= slot) {
  int nentries = map->nentries ? map->nentries : 32;
  void **tmp;

  if (slot > INT_MAX / 2)
   return (-1);

  while (nentries <= slot)
   nentries <<= 1;

  if (nentries > INT_MAX / msize)
   return (-1);

  tmp = (void **)mm_realloc(map->entries, nentries * msize);
  if (tmp == ((void*)0))
   return (-1);

  memset(&tmp[map->nentries], 0,
      (nentries - map->nentries) * msize);

  map->nentries = nentries;
  map->entries = tmp;
 }

 return (0);
}
