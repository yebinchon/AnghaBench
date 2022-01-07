
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_var {int flags; } ;


 int __ok ;

void tl_var_check_used (struct tl_var *v) {
  __ok = __ok && (v->flags & 3);
}
