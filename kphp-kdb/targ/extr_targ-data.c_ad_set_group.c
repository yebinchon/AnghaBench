
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_targ_ad_setint {int value; int ad_id; } ;
struct advert {int group; } ;


 int ad_is_ancient (int ) ;
 int assert (int) ;
 struct advert* get_ad_f (int ,int ) ;
 scalar_t__ load_ancient_ad (struct advert*) ;

__attribute__((used)) static int ad_set_group (struct lev_targ_ad_setint *E) {
  assert (E->value != (-1 << 31));
  struct advert *A = get_ad_f (E->ad_id, ad_is_ancient (E->ad_id));
  if (!A) {
    return -1;
  }

  assert (load_ancient_ad (A) >= 0);

  A->group = E->value;

  return 1;
}
