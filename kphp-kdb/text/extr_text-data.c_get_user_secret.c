
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* secret; } ;
typedef TYPE_1__ user_t ;


 TYPE_1__* get_user (int) ;

char *get_user_secret (int user_id) {
  user_t *U = get_user (user_id);
  int i;

  if (!U) {
    return 0;
  }

  for (i = 0; i < 8; i++) {
    if (U->secret[i]) {
      break;
    }
  }

  return i == 8 ? 0 : U->secret;
}
