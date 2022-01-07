
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item_id; } ;
typedef TYPE_1__ item_t ;


 int get_object_id (int ) ;

__attribute__((used)) static int get_rating_as_object_id (item_t *I, int priority) {
  return get_object_id (I->item_id);
}
