
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_3__ {TYPE_2__ v4; } ;
struct cidr {int prefix; TYPE_1__ addr; } ;


 scalar_t__ htonl (int) ;
 scalar_t__ printed ;
 int qprintf (char*) ;

__attribute__((used)) static bool cidr_contains4(struct cidr *a, struct cidr *b)
{
 uint32_t net1 = a->addr.v4.s_addr & htonl(~((1 << (32 - a->prefix)) - 1));
 uint32_t net2 = b->addr.v4.s_addr & htonl(~((1 << (32 - a->prefix)) - 1));

 if (printed)
  qprintf(" ");

 if ((b->prefix >= a->prefix) && (net1 == net2))
 {
  qprintf("1");
  return 1;
 }
 else
 {
  qprintf("0");
  return 0;
 }
}
