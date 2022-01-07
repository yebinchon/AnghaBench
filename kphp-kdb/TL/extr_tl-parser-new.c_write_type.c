
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {int name; int constructors_num; int flags; int params_num; int params_types; int id; } ;


 int TLS_TYPE ;
 int schema_version ;
 int wint (int) ;
 int wll (int ) ;
 int wstr (int ) ;

void write_type (struct tl_type *t) {
  wint (schema_version >= 1 ? TLS_TYPE : 1);
  wint (t->name);
  wstr (t->id);
  wint (t->constructors_num);
  wint (t->flags);
  wint (t->params_num);
  wll (t->params_types);
}
