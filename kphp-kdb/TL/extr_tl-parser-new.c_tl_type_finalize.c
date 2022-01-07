
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {int flags; } ;



void tl_type_finalize (struct tl_type *t) {
  t->flags &= ~4;
}
