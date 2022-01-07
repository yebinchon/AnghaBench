
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; long long l; } ;
struct tl_scheme_object {TYPE_1__ u; } ;


 long long INT_MAX ;
 long long INT_MIN ;
 int assert (struct tl_scheme_object*) ;
 struct tl_scheme_object* tl_scheme_cons (struct tl_scheme_object*,struct tl_scheme_object*) ;
 struct tl_scheme_object* tl_scheme_object_new (int ) ;
 int tlso_int ;
 int tlso_long ;

__attribute__((used)) static struct tl_scheme_object *tl_scheme_cons_number (long long r, struct tl_scheme_object *stack) {
  struct tl_scheme_object *O;
  if (INT_MIN <= r && r <= INT_MAX) {
    O = tl_scheme_object_new (tlso_int);
    O->u.i = (int) r;
  } else {
    O = tl_scheme_object_new (tlso_long);
    O->u.l = r;
  }
  stack = tl_scheme_cons (O, stack);
  assert (stack);
  return stack;
}
