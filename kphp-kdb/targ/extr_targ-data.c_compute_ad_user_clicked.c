
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clicked_ads; } ;
typedef TYPE_1__ user_t ;
typedef int treeref_t ;
struct TYPE_5__ {int z; } ;


 int AdSpace ;
 TYPE_3__* TNODE (int ,int ) ;
 TYPE_1__* get_user (int) ;
 int intree_lookup (int ,int ,int) ;

int compute_ad_user_clicked (int user_id, int ad_id) {
  user_t *U = get_user (user_id);
  if (!U) {
    return 0;
  }
  treeref_t N = intree_lookup (AdSpace, U->clicked_ads, ad_id);
  if (!N) {
    return 0;
  }
  int x = TNODE(AdSpace, N)->z;
  return x + (x >= 0);
}
