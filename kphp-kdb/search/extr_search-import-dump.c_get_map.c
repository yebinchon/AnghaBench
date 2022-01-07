
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* Map ;
 int map_size ;

int get_map (int x) {
  if (x >= 0 && x < map_size) { return Map[x]; }
  return -1;
}
