
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* literal_data; } ;
typedef TYPE_2__ jvp_literal_number ;
struct TYPE_10__ {int ptr; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
typedef TYPE_3__ jv ;


 int JVP_FLAGS_NUMBER_LITERAL ;
 scalar_t__ JVP_HAS_FLAGS (TYPE_3__,int ) ;
 int JVP_HAS_KIND (TYPE_3__,int ) ;
 int JV_KIND_NUMBER ;
 int assert (int ) ;
 int jv_mem_free (TYPE_2__*) ;
 TYPE_2__* jvp_literal_number_ptr (TYPE_3__) ;
 scalar_t__ jvp_refcnt_dec (int ) ;

__attribute__((used)) static void jvp_number_free(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_NUMBER));
  if (JVP_HAS_FLAGS(j, JVP_FLAGS_NUMBER_LITERAL) && jvp_refcnt_dec(j.u.ptr)) {
    jvp_literal_number* n = jvp_literal_number_ptr(j);
    if (n->literal_data) {
      jv_mem_free(n->literal_data);
    }
    jv_mem_free(n);
  }
}
