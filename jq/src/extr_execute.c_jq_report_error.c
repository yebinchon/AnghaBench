
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jv ;
struct TYPE_3__ {int err_cb_data; int (* err_cb ) (int ,int ) ;} ;
typedef TYPE_1__ jq_state ;


 int assert (int (*) (int ,int )) ;
 int stub1 (int ,int ) ;

void jq_report_error(jq_state *jq, jv value) {
  assert(jq->err_cb);

  jq->err_cb(jq->err_cb_data, value);
}
