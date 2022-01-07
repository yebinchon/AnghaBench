
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jv ;
struct TYPE_3__ {int exit_code; } ;
typedef TYPE_1__ jq_state ;


 int jv_copy (int ) ;

jv jq_get_exit_code(jq_state *jq)
{
  return jv_copy(jq->exit_code);
}
