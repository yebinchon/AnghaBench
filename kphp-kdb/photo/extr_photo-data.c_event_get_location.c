
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int field_desc ;
typedef int event ;
struct TYPE_4__ {int * dyn; int * obj; } ;
typedef TYPE_1__ actual_object ;
struct TYPE_5__ {int * fields; } ;


 char* GET_RAW (int *,int *) ;
 size_t PHOTO_TYPE ;
 char* RAW_DATA (char*) ;
 int RAW_LEN (char*) ;
 scalar_t__ has_field (int *,int) ;
 int photo_type__location ;
 int photo_type__original_location ;
 TYPE_2__* types ;

char *event_get_location (actual_object *o, int original_location, int *len) {
  event *e = o->obj, *e2 = o->dyn;
  int field_num = original_location ? photo_type__original_location : photo_type__location;

  if (field_num != -1) {
    field_desc *f = &types[PHOTO_TYPE].fields[field_num];

    char *x = ((void*)0);
    if (e2 != ((void*)0) && has_field (e2, field_num)) {
      x = GET_RAW (e2, f);
    } else if (e != ((void*)0) && has_field (e, field_num)) {
      x = GET_RAW (e, f);
    }
    if (x != ((void*)0)) {
      *len = RAW_LEN (x);
      return RAW_DATA (x);
    }
  }
  *len = 0;
  return "";
}
