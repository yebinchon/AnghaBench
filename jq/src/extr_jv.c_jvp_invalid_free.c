
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int errmsg; } ;
typedef TYPE_2__ jvp_invalid ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_3__ jv ;


 int JVP_FLAGS_INVALID_MSG ;
 scalar_t__ JVP_HAS_FLAGS (TYPE_3__,int ) ;
 int JVP_HAS_KIND (TYPE_3__,int ) ;
 int JV_KIND_INVALID ;
 int assert (int ) ;
 int jv_free (int ) ;
 int jv_mem_free (scalar_t__) ;
 scalar_t__ jvp_refcnt_dec (scalar_t__) ;

__attribute__((used)) static void jvp_invalid_free(jv x) {
  assert(JVP_HAS_KIND(x, JV_KIND_INVALID));
  if (JVP_HAS_FLAGS(x, JVP_FLAGS_INVALID_MSG) && jvp_refcnt_dec(x.u.ptr)) {
    jv_free(((jvp_invalid*)x.u.ptr)->errmsg);
    jv_mem_free(x.u.ptr);
  }
}
