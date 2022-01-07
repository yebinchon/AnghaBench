
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_treap ;


 int dl_trp_add (int *,int,int) ;
 int dl_trp_del (int *,int) ;
 int my_rand () ;

void dl_trp_incr (dl_treap *tr, int x) {
  int y = dl_trp_del (tr, x);
  dl_trp_add (tr, x, (~(~((y) >> 16) + 1) << 16) | (my_rand() & 0xFFFF));
}
