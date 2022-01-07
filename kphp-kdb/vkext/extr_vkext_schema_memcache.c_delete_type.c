
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {int constructors_num; int extra; struct tl_type* constructors; scalar_t__ id; } ;


 int ADD_PFREE (int) ;
 int delete_combinator (struct tl_type) ;
 int strlen (scalar_t__) ;
 int tl_types ;
 int zzfree (struct tl_type*,int) ;
 int zzstrfree (scalar_t__) ;

void delete_type (struct tl_type *t) {
  if (!t) { return; }
  if (t->id) {
    ADD_PFREE (strlen (t->id));
    zzstrfree (t->id);
  }
  if (t->constructors_num && t->constructors) {
    int i;
    for (i = 0; i < t->extra; i++) {
      delete_combinator (t->constructors[i]);
    }
    zzfree (t->constructors, t->constructors_num * sizeof (void *));
    ADD_PFREE (t->constructors_num * sizeof (void *));
  }
  tl_types --;
  zzfree (t, sizeof (*t));
  ADD_PFREE (sizeof (*t));
}
