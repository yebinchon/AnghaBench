
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubus_object {scalar_t__ id; scalar_t__ name; } ;
struct TYPE_2__ {struct ubus_object obj; } ;
struct wpa_supplicant {TYPE_1__ ubus; } ;


 int ctx ;
 int free (char*) ;
 int ubus_remove_object (int ,struct ubus_object*) ;
 int wpas_ubus_ref_dec () ;

void wpas_ubus_free_bss(struct wpa_supplicant *wpa_s)
{
 struct ubus_object *obj = &wpa_s->ubus.obj;
 char *name = (char *) obj->name;

 if (!ctx)
  return;

 if (obj->id) {
  ubus_remove_object(ctx, obj);
  wpas_ubus_ref_dec();
 }

 free(name);
}
