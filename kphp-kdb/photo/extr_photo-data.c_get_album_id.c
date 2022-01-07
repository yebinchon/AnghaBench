
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int event ;
struct TYPE_2__ {int * fields; } ;


 size_t ALBUM_TYPE ;
 int* GET_INT (int *,int *) ;
 size_t album_type_id ;
 TYPE_1__* types ;

int get_album_id (event *e) {
  return *GET_INT (e, &types[ALBUM_TYPE].fields[album_type_id]);
}
