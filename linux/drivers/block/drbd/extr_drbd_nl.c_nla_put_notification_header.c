
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct drbd_notification_header {int nh_type; } ;
typedef enum drbd_notification_type { ____Placeholder_drbd_notification_type } drbd_notification_type ;


 int drbd_notification_header_to_skb (struct sk_buff*,struct drbd_notification_header*,int) ;

__attribute__((used)) static int nla_put_notification_header(struct sk_buff *msg,
           enum drbd_notification_type type)
{
 struct drbd_notification_header nh = {
  .nh_type = type,
 };

 return drbd_notification_header_to_skb(msg, &nh, 1);
}
