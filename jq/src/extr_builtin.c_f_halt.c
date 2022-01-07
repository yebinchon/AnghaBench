
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jq_halt (int *,int ,int ) ;
 int jv_free (int ) ;
 int jv_invalid () ;
 int jv_true () ;

__attribute__((used)) static jv f_halt(jq_state *jq, jv input) {
  jv_free(input);
  jq_halt(jq, jv_invalid(), jv_invalid());
  return jv_true();
}
