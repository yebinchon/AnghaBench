
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tl_scheme_object* cdr; struct tl_scheme_object* car; } ;
struct TYPE_4__ {int s; TYPE_1__ p; } ;
struct tl_scheme_object {int type; TYPE_2__ u; } ;


 int cstr_free (int *) ;
 struct tl_scheme_object obj_empty_list ;
 int zfree (struct tl_scheme_object*,int) ;

void tl_scheme_object_free (struct tl_scheme_object *A) {
  switch (A->type) {
    case 132:
      if (A != &obj_empty_list) {
        tl_scheme_object_free (A->u.p.car);
        if (A->u.p.cdr != &obj_empty_list) {
          tl_scheme_object_free (A->u.p.cdr);
        }
      }
    break;
    case 128:
    case 134:
      cstr_free (&A->u.s);
    break;
    case 130:
    case 129:
      return;
    case 133:
    case 131:
    case 135:
    break;
  }
  zfree (A, sizeof (struct tl_scheme_object));
}
