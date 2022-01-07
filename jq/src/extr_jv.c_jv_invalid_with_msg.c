
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * member_0; } ;
struct TYPE_11__ {TYPE_1__ member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_10__ {int refcnt; TYPE_3__ errmsg; } ;
typedef TYPE_2__ jvp_invalid ;
typedef TYPE_3__ jv ;


 int JVP_FLAGS_INVALID_MSG ;
 scalar_t__ JVP_HAS_KIND (TYPE_3__,int ) ;
 TYPE_3__ JV_INVALID ;
 int JV_KIND_NULL ;
 int JV_REFCNT_INIT ;
 TYPE_2__* jv_mem_alloc (int) ;

jv jv_invalid_with_msg(jv err) {
  if (JVP_HAS_KIND(err, JV_KIND_NULL))
    return JV_INVALID;
  jvp_invalid* i = jv_mem_alloc(sizeof(jvp_invalid));
  i->refcnt = JV_REFCNT_INIT;
  i->errmsg = err;

  jv x = {JVP_FLAGS_INVALID_MSG, 0, 0, 0, {&i->refcnt}};
  return x;
}
