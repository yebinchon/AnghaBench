
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_logs_create_type {int text_len; int text; } ;


 int buff ;
 char* create_type_buf (int ,int ) ;
 int strcpy (int ,int ) ;

char *create_type (struct lev_logs_create_type *E) {
  strcpy (buff, E->text);
  return create_type_buf (buff, E->text_len);
}
