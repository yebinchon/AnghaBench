
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcnt; } ;
typedef TYPE_1__ jvp_string ;
typedef int jv ;


 int jv_mem_free (TYPE_1__*) ;
 scalar_t__ jvp_refcnt_dec (int *) ;
 TYPE_1__* jvp_string_ptr (int ) ;

__attribute__((used)) static void jvp_string_free(jv js) {
  jvp_string* s = jvp_string_ptr(js);
  if (jvp_refcnt_dec(&s->refcnt)) {
    jv_mem_free(s);
  }
}
