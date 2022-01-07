
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netrule {unsigned int mask1; unsigned int ip; int type; } ;


 int assert (int ) ;

int check_rule (struct netrule *A, unsigned ip) {
  assert (A->type);
  return (ip & ~(A->mask1)) == A->ip;
}
