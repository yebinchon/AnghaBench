
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
typedef int recommend_user_t ;
typedef int notify_user_t ;


 scalar_t__ NOTIFY_MODE ;
 int RECOMMEND_MODE ;
 scalar_t__ UG_MODE ;
 int assert (int ) ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_user_struct (user_t *U) {
  if (UG_MODE) {
    zfree (U, sizeof (user_t));
  } else if (NOTIFY_MODE) {
    zfree (U, sizeof (notify_user_t));
  } else {
    assert (RECOMMEND_MODE);
    zfree (U, sizeof (recommend_user_t));
  }
}
