
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OLIST_COUNT ;
 scalar_t__* ocntT ;

void relax_online_tree (void) {
  long i;
  for (i = OLIST_COUNT - 1; i > 0; i--) {
    ocntT[i] = ocntT[2 * i] + ocntT[2 * i + 1];
  }
}
