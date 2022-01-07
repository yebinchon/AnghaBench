
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** insert_tags; } ;
typedef TYPE_1__ user_t ;


 int MAX_INS_TAGS ;
 TYPE_1__* get_user (int) ;

int get_local_id_by_random_tag (int user_id, int random_tag) {
  int i;
  user_t *U = get_user (user_id);

  if (!U || random_tag <= 0) {
    return 0;
  }
  for (i = 0; i < MAX_INS_TAGS; i++) {
    if (U->insert_tags[i][0] == random_tag) {
      return U->insert_tags[i][1];
    }
  }
  return 0;
}
