
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {scalar_t__ extra; scalar_t__ constructors_num; struct tl_combinator** constructors; } ;
struct tl_combinator {int is_fun; struct tl_combinator* id; void* name; } ;


 int ADD_MALLOC (int) ;
 int ADD_PFREE (int) ;
 int ADD_PMALLOC (int) ;
 int assert (int) ;
 scalar_t__ read_combinator_left (struct tl_combinator*) ;
 scalar_t__ read_combinator_right (struct tl_combinator*) ;
 int strlen (struct tl_combinator*) ;
 int tl_constructors ;
 int tl_fun_insert_id (struct tl_combinator*) ;
 int tl_fun_insert_name (struct tl_combinator*) ;
 int tl_functions ;
 scalar_t__ tl_parse_error () ;
 void* tl_parse_int () ;
 scalar_t__ tl_parse_string (struct tl_combinator**) ;
 struct tl_type* tl_type_get_by_name (int) ;
 int zzfree (struct tl_combinator*,int) ;
 struct tl_combinator* zzmalloc0 (int) ;

struct tl_combinator *read_combinators (int v) {
  struct tl_combinator *c = zzmalloc0 (sizeof (*c));
  c->name = tl_parse_int ();
  if (tl_parse_error () || tl_parse_string (&c->id) < 0) {
    zzfree (c, sizeof (*c));
    return 0;
  }
  ADD_MALLOC (strlen (c->id));
  ADD_PMALLOC (strlen (c->id));
  int x = tl_parse_int ();
  struct tl_type *t = tl_type_get_by_name (x);
  if (!t && (x || v != 3)) {
    ADD_PFREE (strlen (c->id));
    zzfree (c->id, strlen (c->id));
    zzfree (c, sizeof (*c));
    return 0;
  }
  assert (t || (!x && v == 3));
  if (v == 2) {
    if (t->extra >= t->constructors_num) {
      zzfree (c, sizeof (*c));
      return 0;
    }
    assert (t->extra < t->constructors_num);
    t->constructors[t->extra ++] = c;
    tl_constructors ++;
    c->is_fun = 0;
  } else {
    assert (v == 3);
    tl_fun_insert_id (c);
    tl_fun_insert_name (c);
    tl_functions ++;
    c->is_fun = 1;
  }
  if (read_combinator_left (c) < 0) {

    return 0;
  }
  if (read_combinator_right (c) < 0) {

    return 0;
  }
  ADD_PMALLOC (sizeof (*c));
  return c;
}
