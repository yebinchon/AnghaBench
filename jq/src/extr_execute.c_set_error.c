
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jv ;
struct TYPE_3__ {int error; } ;
typedef TYPE_1__ jq_state ;


 int jv_free (int ) ;

__attribute__((used)) static void set_error(jq_state *jq, jv value) {

  jv_free(jq->error);
  jq->error = value;
}
