
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dyn_object ;
typedef int change ;


 int ALBUM_TYPE ;
 int my_add_change (int **,int *,int ) ;

int album_add_change (dyn_object **_o, change *_c) {
  return my_add_change (_o, _c, ALBUM_TYPE);
}
