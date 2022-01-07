
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int secret; } ;
typedef TYPE_1__ user_t ;


 TYPE_1__* get_user_f (int) ;
 int memcpy (int ,char const*,int) ;
 int memset (int ,int ,int) ;
 int strlen (char const*) ;

int set_user_secret (int user_id, const char *secret) {
  user_t *U = get_user_f (user_id);
  if (!U) {
    return 0;
  }

  if (!secret) {
    memset (U->secret, 0, 8);
    return 1;
  }

  if (strlen (secret) != 8) {
    return 0;
  }

  memcpy (U->secret, secret, 8);
  return 8;
}
