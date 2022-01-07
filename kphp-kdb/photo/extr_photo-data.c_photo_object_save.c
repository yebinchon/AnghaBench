
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int actual_object ;


 int PHOTO_TYPE ;
 int my_object_save (int *,char*,int,int ) ;

int photo_object_save (actual_object *o, char *buf, int buf_size) {
  return my_object_save (o, buf, buf_size, PHOTO_TYPE);
}
