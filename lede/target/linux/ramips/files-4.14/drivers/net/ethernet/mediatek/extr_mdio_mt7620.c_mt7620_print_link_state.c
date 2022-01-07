
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {int netdev; } ;


 int fe_speed_str (int) ;
 int netdev_info (int ,char*,int,...) ;

void mt7620_print_link_state(struct fe_priv *priv, int port, int link,
        int speed, int duplex)
{
 if (link)
  netdev_info(priv->netdev, "port %d link up (%sMbps/%s duplex)\n",
       port, fe_speed_str(speed),
       (duplex) ? "Full" : "Half");
 else
  netdev_info(priv->netdev, "port %d link down\n", port);
}
