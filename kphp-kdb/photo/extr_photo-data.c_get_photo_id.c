
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int event ;
struct TYPE_2__ {int * fields; } ;


 int* GET_INT (int *,int *) ;
 size_t PHOTO_TYPE ;
 size_t photo_type_id ;
 TYPE_1__* types ;

int get_photo_id (event *e) {
  return *GET_INT (e, &types[PHOTO_TYPE].fields[photo_type_id]);
}
