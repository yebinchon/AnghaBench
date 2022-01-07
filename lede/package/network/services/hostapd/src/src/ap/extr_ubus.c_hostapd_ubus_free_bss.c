
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubus_object {scalar_t__ id; scalar_t__ name; } ;
struct TYPE_2__ {struct ubus_object obj; } ;
struct hostapd_data {TYPE_1__ ubus; } ;


 int ctx ;
 int free (char*) ;
 int hostapd_ubus_ref_dec () ;
 int ubus_remove_object (int ,struct ubus_object*) ;

void hostapd_ubus_free_bss(struct hostapd_data *hapd)
{
 struct ubus_object *obj = &hapd->ubus.obj;
 char *name = (char *) obj->name;

 if (!ctx)
  return;

 if (obj->id) {
  ubus_remove_object(ctx, obj);
  hostapd_ubus_ref_dec();
 }

 free(name);
}
