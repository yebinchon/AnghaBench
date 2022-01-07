
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct resource_info {int res_susp_fen; int res_susp_nod; int res_susp; int res_role; } ;
struct drbd_resource_state_change {int * susp_fen; int * susp_nod; int * susp; int * role; struct drbd_resource* resource; } ;
struct drbd_resource {int dummy; } ;
typedef enum drbd_notification_type { ____Placeholder_drbd_notification_type } drbd_notification_type ;


 size_t NEW ;
 int notify_resource_state (struct sk_buff*,unsigned int,struct drbd_resource*,struct resource_info*,int) ;

void notify_resource_state_change(struct sk_buff *skb,
      unsigned int seq,
      struct drbd_resource_state_change *resource_state_change,
      enum drbd_notification_type type)
{
 struct drbd_resource *resource = resource_state_change->resource;
 struct resource_info resource_info = {
  .res_role = resource_state_change->role[NEW],
  .res_susp = resource_state_change->susp[NEW],
  .res_susp_nod = resource_state_change->susp_nod[NEW],
  .res_susp_fen = resource_state_change->susp_fen[NEW],
 };

 notify_resource_state(skb, seq, resource, &resource_info, type);
}
