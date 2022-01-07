
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_desc ;


 int get_field_id_len (int *,char*,int ) ;
 int strlen (char*) ;

int get_field_id (type_desc *t, char *s) {
  return get_field_id_len (t, s, strlen (s));
}
