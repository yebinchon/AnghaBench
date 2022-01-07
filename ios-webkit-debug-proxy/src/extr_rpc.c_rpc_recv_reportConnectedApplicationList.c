
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int rpc_app_t ;
typedef int plist_t ;
struct TYPE_4__ {int (* on_reportConnectedApplicationList ) (TYPE_1__*,int *) ;} ;


 int plist_dict_get_item (int const,char*) ;
 int rpc_free_apps (int *) ;
 int rpc_parse_apps (int ,int **) ;
 int stub1 (TYPE_1__*,int *) ;

rpc_status rpc_recv_reportConnectedApplicationList(rpc_t self,
    const plist_t args) {
  plist_t item = plist_dict_get_item(args, "WIRApplicationDictionaryKey");
  rpc_app_t *apps = ((void*)0);
  rpc_status ret = rpc_parse_apps(item, &apps);
  if (!ret) {
    ret = self->on_reportConnectedApplicationList(self, apps);
    rpc_free_apps(apps);
  }
  return ret;
}
