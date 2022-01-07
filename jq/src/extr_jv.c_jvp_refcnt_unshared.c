
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ jv_refcnt ;


 int assert (int) ;

__attribute__((used)) static int jvp_refcnt_unshared(jv_refcnt* c) {
  assert(c->count > 0);
  return c->count == 1;
}
