
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int has_subscribers; } ;
struct TYPE_6__ {TYPE_2__ obj; } ;
struct hostapd_data {TYPE_1__ ubus; } ;
struct TYPE_8__ {int head; } ;


 TYPE_3__ b ;
 int blob_buf_init (TYPE_3__*,int ) ;
 int blobmsg_add_macaddr (TYPE_3__*,char*,int const*) ;
 int ctx ;
 int ubus_notify (int ,TYPE_2__*,char const*,int ,int) ;

void hostapd_ubus_notify(struct hostapd_data *hapd, const char *type, const u8 *addr)
{
 if (!hapd->ubus.obj.has_subscribers)
  return;

 if (!addr)
  return;

 blob_buf_init(&b, 0);
 blobmsg_add_macaddr(&b, "address", addr);

 ubus_notify(ctx, &hapd->ubus.obj, type, b.head, -1);
}
