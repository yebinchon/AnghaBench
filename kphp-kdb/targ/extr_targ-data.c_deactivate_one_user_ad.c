
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inactive_ads; int active_ads; } ;
typedef TYPE_1__ user_t ;
typedef scalar_t__ treeref_t ;
struct TYPE_5__ {scalar_t__ z; } ;


 int AdSpace ;
 TYPE_3__* TNODE (int ,scalar_t__) ;
 int active_ad_nodes ;
 int free_intree_node (int ,scalar_t__) ;
 int inactive_ad_nodes ;
 int intree_insert (int ,int ,scalar_t__) ;
 int intree_remove (int ,int ,int,scalar_t__*) ;

__attribute__((used)) static inline void deactivate_one_user_ad (user_t *U, int ad_id) {
  treeref_t RN;
  U->active_ads = intree_remove (AdSpace, U->active_ads, ad_id, &RN);
  if (RN) {
    --active_ad_nodes;
    if (TNODE (AdSpace, RN)->z) {
      ++inactive_ad_nodes;
      U->inactive_ads = intree_insert (AdSpace, U->inactive_ads, RN);
    } else {
      free_intree_node (AdSpace, RN);
    }
  }
}
