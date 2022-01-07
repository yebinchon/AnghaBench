
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int SW_INFO (char*,int ) ;

__attribute__((used)) static void adm5120_if_tx_timeout(struct net_device *dev)
{
 SW_INFO("TX timeout on %s\n", dev->name);
}
