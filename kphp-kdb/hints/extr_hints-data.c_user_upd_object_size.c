
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int currId; } ;
struct TYPE_5__ {int object_size; void* object_ratings; void* object_names; TYPE_1__ object_table; } ;
typedef TYPE_2__ user ;
typedef int rating ;


 void* dl_realloc (void*,int,int) ;
 int memset (void*,int ,int) ;
 int rating_num ;

void user_upd_object_size (user *u) {
  if (u->object_table.currId >= u->object_size) {
    int len = u->object_size;

    u->object_size = u->object_table.currId * 2;





    u->object_ratings = dl_realloc (u->object_ratings, sizeof (rating) * u->object_size * rating_num, sizeof (rating) * len * rating_num);
    memset (u->object_ratings + len * rating_num, 0, sizeof (rating) * (u->object_size - len) * rating_num);
  }
}
