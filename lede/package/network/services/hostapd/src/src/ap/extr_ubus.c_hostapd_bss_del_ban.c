
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubus_banned_client {int avl; } ;
struct TYPE_2__ {int banned; } ;
struct hostapd_data {TYPE_1__ ubus; } ;


 int avl_delete (int *,int *) ;
 int free (struct ubus_banned_client*) ;

__attribute__((used)) static void
hostapd_bss_del_ban(void *eloop_data, void *user_ctx)
{
 struct ubus_banned_client *ban = eloop_data;
 struct hostapd_data *hapd = user_ctx;

 avl_delete(&hapd->ubus.banned, &ban->avl);
 free(ban);
}
