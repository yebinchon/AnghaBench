
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct blob_attr {int dummy; } ;


 int ARRAY_SIZE (struct blob_attr**) ;
 int __BSS_MGMT_EN_MAX ;
 int __hostapd_bss_mgmt_enable (struct hostapd_data*,int) ;
 int blob_data (struct blob_attr*) ;
 int blob_len (struct blob_attr*) ;
 int blobmsg_get_bool (struct blob_attr*) ;
 int blobmsg_parse (int ,int,struct blob_attr**,int ,int ) ;
 int bss_mgmt_enable_policy ;
 struct hostapd_data* get_hapd_from_object (struct ubus_object*) ;

__attribute__((used)) static int
hostapd_bss_mgmt_enable(struct ubus_context *ctx, struct ubus_object *obj,
     struct ubus_request_data *req, const char *method,
     struct blob_attr *msg)

{
 struct hostapd_data *hapd = get_hapd_from_object(obj);
 struct blob_attr *tb[__BSS_MGMT_EN_MAX];
 struct blob_attr *cur;
 uint32_t flags = 0;
 int i;
 bool neigh = 0, beacon = 0;

 blobmsg_parse(bss_mgmt_enable_policy, __BSS_MGMT_EN_MAX, tb, blob_data(msg), blob_len(msg));

 for (i = 0; i < ARRAY_SIZE(tb); i++) {
  if (!tb[i] || !blobmsg_get_bool(tb[i]))
   continue;

  flags |= (1 << i);
 }

 __hostapd_bss_mgmt_enable(hapd, flags);
}
