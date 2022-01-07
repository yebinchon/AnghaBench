
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int date; int user_id; } ;
typedef TYPE_1__ item_t ;


 int tl_store_raw_data (int *,int) ;

__attribute__((used)) static int serialize_one_item (item_t *A, int ug_mode) {
  if (ug_mode <= 0) {
    tl_store_raw_data (&A->user_id, 36);
  } else {
    tl_store_raw_data (&A->date, 32);
  }
  return 1;
}
