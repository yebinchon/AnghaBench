
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prev_user_creations; } ;
typedef TYPE_1__ user_t ;
struct advert {int* user_list; int users; int ad_id; int prev_user_creations; } ;


 TYPE_1__** User ;
 int activate_one_user_ad (TYPE_1__*,int) ;

__attribute__((used)) static void activate_ad (struct advert *A) {
  int *p = A->user_list, *q = p + A->users;
  int ad_id = A->ad_id, prev_user_creations = A->prev_user_creations;
  while (p < q) {
    int uid = *p++;
    user_t *U = User[uid];
    if (U && U->prev_user_creations <= prev_user_creations) {
      activate_one_user_ad (U, ad_id);
    }
  }
}
