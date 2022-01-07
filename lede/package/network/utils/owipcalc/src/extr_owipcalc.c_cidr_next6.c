
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct in6_addr {size_t* s6_addr; } ;
struct TYPE_2__ {struct in6_addr v6; } ;
struct cidr {int prefix; TYPE_1__ addr; } ;


 struct cidr* cidr_clone (struct cidr*) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static bool cidr_next6(struct cidr *a, struct cidr *b)
{
 uint8_t idx, carry = 1, overflow = 0;
 struct cidr *n = cidr_clone(a);
 struct in6_addr *x = &n->addr.v6;

 if (b->prefix == 0)
 {
  fprintf(stderr, "overflow during 'next'\n");
  return 0;
 }

 idx = (b->prefix - 1) / 8;

 do {
  overflow = !!((x->s6_addr[idx] + carry) >= 256);
  x->s6_addr[idx] += carry;
  carry = overflow;
 }
 while (idx-- > 0);

 if (carry)
 {
  fprintf(stderr, "overflow during 'next'\n");
  return 0;
 }

 n->prefix = b->prefix;

 return 1;
}
