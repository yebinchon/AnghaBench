
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active_ads; int clicked_ads; int inactive_ads; } ;
typedef TYPE_1__ user_t ;
typedef scalar_t__ treeref_t ;
struct intree_node {int x; scalar_t__ z; } ;


 int AdSpace ;
 struct intree_node* TNODE (int ,scalar_t__) ;
 int active_ad_nodes ;
 int assert (int) ;
 int inactive_ad_nodes ;
 int intree_insert (int ,int ,scalar_t__) ;
 scalar_t__ intree_lookup (int ,int ,int) ;
 int intree_remove (int ,int ,int,scalar_t__*) ;
 scalar_t__ new_intree_node (int ) ;

__attribute__((used)) static inline void activate_one_user_ad (user_t *U, int ad_id) {
  treeref_t RN;
  U->inactive_ads = intree_remove (AdSpace, U->inactive_ads, ad_id, &RN);
  if (!RN) {
    if (intree_lookup (AdSpace, U->clicked_ads, ad_id)) {
      return;
    }
    RN = new_intree_node (AdSpace);
    struct intree_node *C = TNODE (AdSpace, RN);
    C->x = ad_id;
    C->z = 0;
  } else {
    --inactive_ad_nodes;
  }
  ++active_ad_nodes;
  assert (!intree_lookup (AdSpace, U->active_ads, ad_id));
  U->active_ads = intree_insert (AdSpace, U->active_ads, RN);
}
