
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {TYPE_1__ tuntap; } ;
struct TYPE_6__ {TYPE_2__ info; } ;
struct iss_net_private {TYPE_3__ tp; } ;


 int simc_write (int ,int ,int ) ;

__attribute__((used)) static int tuntap_write(struct iss_net_private *lp, struct sk_buff **skb)
{
 return simc_write(lp->tp.info.tuntap.fd, (*skb)->data, (*skb)->len);
}
