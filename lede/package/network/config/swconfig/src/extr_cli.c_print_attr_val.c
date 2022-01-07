
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int i; char* s; struct switch_port_link* link; TYPE_1__* ports; } ;
struct switch_val {int len; int port_vlan; TYPE_2__ value; } ;
struct switch_port_link {int eee; int rx_flow; int tx_flow; int duplex; int speed; int aneg; int link; } ;
struct switch_attr {int type; } ;
struct TYPE_3__ {int id; int flags; } ;






 int SWLIB_LINK_FLAG_EEE_1000BASET ;
 int SWLIB_LINK_FLAG_EEE_100BASET ;
 int SWLIB_PORT_FLAG_TAGGED ;
 int printf (char*,...) ;
 char* speed_str (int ) ;

__attribute__((used)) static void
print_attr_val(const struct switch_attr *attr, const struct switch_val *val)
{
 struct switch_port_link *link;
 int i;

 switch (attr->type) {
 case 131:
  printf("%d", val->value.i);
  break;
 case 128:
  printf("%s", val->value.s);
  break;
 case 129:
  for(i = 0; i < val->len; i++) {
   printf("%d%s ",
    val->value.ports[i].id,
    (val->value.ports[i].flags &
     SWLIB_PORT_FLAG_TAGGED) ? "t" : "");
  }
  break;
 case 130:
  link = val->value.link;
  if (link->link)
   printf("port:%d link:up speed:%s %s-duplex %s%s%s%s%s",
    val->port_vlan,
    speed_str(link->speed),
    link->duplex ? "full" : "half",
    link->tx_flow ? "txflow " : "",
    link->rx_flow ? "rxflow " : "",
    link->eee & SWLIB_LINK_FLAG_EEE_100BASET ? "eee100 " : "",
    link->eee & SWLIB_LINK_FLAG_EEE_1000BASET ? "eee1000 " : "",
    link->aneg ? "auto" : "");
  else
   printf("port:%d link:down", val->port_vlan);
  break;
 default:
  printf("?unknown-type?");
 }
}
