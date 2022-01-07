
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* GT ;
 int Gc ;
 int* I ;
 int MAX_GROUPS ;
 int adj_rec ;
 size_t gs_id ;
 size_t gs_subtype ;

void process_groupshort_row (void) {
  int x = I[gs_id], y = I[gs_subtype];
  if (x <= 0 || x >= MAX_GROUPS || y <= 0 || y >= 128) {
    return;
  }
  GT[x] = y;
  if (x >= Gc) { Gc = x+1; }
  adj_rec++;
}
