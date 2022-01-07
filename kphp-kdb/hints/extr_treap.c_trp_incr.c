
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treap ;


 int my_rand () ;
 int trp_add (int *,int,int) ;
 int trp_del (int *,int) ;

void trp_incr (treap *tr, int x) {
  int y = trp_del (tr, x);
  trp_add (tr, x, (~(~((y) >> 16) + 1) << 16) | (my_rand() & 0xFFFF));
}
