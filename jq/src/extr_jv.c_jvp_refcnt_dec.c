
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; } ;
typedef TYPE_1__ jv_refcnt ;



__attribute__((used)) static int jvp_refcnt_dec(jv_refcnt* c) {
  c->count--;
  return c->count == 0;
}
