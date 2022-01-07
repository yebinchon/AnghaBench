
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jv ;
struct TYPE_3__ {int attrs; } ;
typedef TYPE_1__ jq_state ;


 scalar_t__ JV_KIND_OBJECT ;
 int assert (int) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;

void jq_set_attrs(jq_state *jq, jv attrs) {
  assert(jv_get_kind(attrs) == JV_KIND_OBJECT);
  jv_free(jq->attrs);
  jq->attrs = attrs;
}
