
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ v4; } ;
struct cidr {int prefix; TYPE_2__ addr; } ;


 struct cidr* cidr_clone (struct cidr*) ;
 int htonl (int) ;

__attribute__((used)) static bool cidr_broadcast4(struct cidr *a)
{
 struct cidr *n = cidr_clone(a);

 n->addr.v4.s_addr |= htonl(((1 << (32 - n->prefix)) - 1));
 n->prefix = 32;

 return 1;
}
