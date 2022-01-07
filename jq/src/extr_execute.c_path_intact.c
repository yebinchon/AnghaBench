
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jv ;
struct TYPE_3__ {scalar_t__ subexp_nest; int value_at_path; int path; } ;
typedef TYPE_1__ jq_state ;


 scalar_t__ JV_KIND_ARRAY ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_identical (int ,int ) ;

__attribute__((used)) static int path_intact(jq_state *jq, jv curr) {
  if (jq->subexp_nest == 0 && jv_get_kind(jq->path) == JV_KIND_ARRAY) {
    return jv_identical(curr, jv_copy(jq->value_at_path));
  } else {
    jv_free(curr);
    return 1;
  }
}
