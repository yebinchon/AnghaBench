
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ uinfo; } ;
struct TYPE_4__ {int updated_at; } ;


 TYPE_1__ CDataUserInfo ;
 TYPE_2__* MyCData ;
 int get_precise_time (int) ;
 int update_user_info_copy (scalar_t__,TYPE_1__*) ;

int store_common_data (void) {
  if (!MyCData) {
    return -1;
  }
  CDataUserInfo.updated_at = get_precise_time (1000000);
  update_user_info_copy (MyCData->uinfo, &CDataUserInfo);
  update_user_info_copy (MyCData->uinfo + 1, &CDataUserInfo);
  return 1;
}
