
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int iss_net_change_mtu(struct net_device *dev, int new_mtu)
{
 return -EINVAL;
}
