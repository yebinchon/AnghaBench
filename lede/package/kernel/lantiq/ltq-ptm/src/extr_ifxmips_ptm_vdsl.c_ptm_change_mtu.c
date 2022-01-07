
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int ETH_DATA_LEN ;

__attribute__((used)) static int ptm_change_mtu(struct net_device *dev, int mtu)
{

        if (mtu < 68 || mtu > ETH_DATA_LEN + 8)
                return -EINVAL;
        dev->mtu = mtu;
        return 0;
}
