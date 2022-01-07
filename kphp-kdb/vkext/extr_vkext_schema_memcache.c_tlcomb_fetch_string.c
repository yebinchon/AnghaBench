
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len; char* val; } ;
struct TYPE_6__ {TYPE_2__ str; } ;
struct TYPE_8__ {TYPE_1__ value; int type; } ;
typedef TYPE_3__ zval ;
struct tl_tree {int dummy; } ;


 int IS_STRING ;
 int MAKE_STD_ZVAL (TYPE_3__*) ;
 int TLUNI_NEXT ;
 int tl_eparse_string (char**) ;
 scalar_t__ tl_parse_error () ;

void *tlcomb_fetch_string (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  char *a;
  int l = tl_eparse_string (&a);
  if (tl_parse_error ()) { return 0; }
  MAKE_STD_ZVAL (*arr);
  (*arr)->type = IS_STRING;
  (*arr)->value.str.len = l;
  (*arr)->value.str.val = a;
  TLUNI_NEXT;
}
