
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_id; } ;
typedef TYPE_1__ user_t ;


 TYPE_1__** User ;
 int assert (int) ;
 int conv_uid (int) ;

__attribute__((used)) static user_t *get_user (int user_id) {
  int i = conv_uid (user_id);
  if (i >= 0 && User[i]) {
    assert (i == User[i]->user_id);
  }
  return i >= 0 ? User[i] : 0;
}
