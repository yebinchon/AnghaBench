
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tl_scheme_object* cdr; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
struct tl_scheme_object {scalar_t__ type; TYPE_2__ u; } ;


 int assert (int) ;
 struct tl_scheme_object obj_empty_list ;
 scalar_t__ tlso_list ;

int tl_scheme_length (struct tl_scheme_object *A) {
  if (A->type != tlso_list) {
    return -1;
  }
  int t = 0;
  while (A != &obj_empty_list) {
    assert (A->type == tlso_list);
    t++;
    A = A->u.p.cdr;
  }
  return t;
}
