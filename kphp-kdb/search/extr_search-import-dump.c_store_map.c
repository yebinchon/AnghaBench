
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_SIZE ;
 int* Map ;
 int map_changes ;
 int map_size ;

void store_map (int x, int v) {
  if (x <= 0 || x >= MAP_SIZE) { return; }
  if (x >= map_size) { map_size = x + 1; }
  Map[x] = v;
  map_changes++;
}
