
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct advert {int* user_list; int users; int ad_id; } ;


 int ** User ;
 int deactivate_one_user_ad (int *,int) ;

__attribute__((used)) static void deactivate_ad (struct advert *A) {
  int *p = A->user_list, *q = p + A->users;
  int ad_id = A->ad_id;
  while (p < q) {
    int uid = *p++;
    user_t *U = User[uid];
    if (U) {
      deactivate_one_user_ad (U, ad_id);
    }
  }
}
