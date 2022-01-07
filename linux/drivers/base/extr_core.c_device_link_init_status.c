
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_link {void* status; } ;
struct TYPE_2__ {int status; } ;
struct device {TYPE_1__ links; } ;





 void* DL_STATE_ACTIVE ;
 void* DL_STATE_AVAILABLE ;
 void* DL_STATE_CONSUMER_PROBE ;
 void* DL_STATE_DORMANT ;
 void* DL_STATE_SUPPLIER_UNBIND ;

__attribute__((used)) static void device_link_init_status(struct device_link *link,
        struct device *consumer,
        struct device *supplier)
{
 switch (supplier->links.status) {
 case 129:
  switch (consumer->links.status) {
  case 129:







   link->status = DL_STATE_CONSUMER_PROBE;
   break;
  default:
   link->status = DL_STATE_DORMANT;
   break;
  }
  break;
 case 130:
  switch (consumer->links.status) {
  case 129:
   link->status = DL_STATE_CONSUMER_PROBE;
   break;
  case 130:
   link->status = DL_STATE_ACTIVE;
   break;
  default:
   link->status = DL_STATE_AVAILABLE;
   break;
  }
  break;
 case 128:
  link->status = DL_STATE_SUPPLIER_UNBIND;
  break;
 default:
  link->status = DL_STATE_DORMANT;
  break;
 }
}
