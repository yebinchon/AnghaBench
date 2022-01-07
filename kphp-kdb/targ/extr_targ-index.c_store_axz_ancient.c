
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* intree_t ;
struct TYPE_7__ {int view_count; int uid; int ad_id; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int z; int x; } ;


 int ADF_NEWANCIENT ;
 TYPE_4__* all_stale_ads_userlist_ptr ;
 TYPE_3__* get_ad (int ) ;
 int stale_ads_current_user ;

__attribute__((used)) static int store_axz_ancient (intree_t TC) {
  if (get_ad (TC->x)->flags & ADF_NEWANCIENT) {
    all_stale_ads_userlist_ptr->ad_id = TC->x;
    all_stale_ads_userlist_ptr->uid = stale_ads_current_user;
    all_stale_ads_userlist_ptr->view_count = TC->z;
    ++all_stale_ads_userlist_ptr;
    return 1;
  } else {
    return 0;
  }
}
