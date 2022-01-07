
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jv_copy (int ) ;
 int jv_dumpf (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static jv f_stderr(jq_state *jq, jv input) {
  jv_dumpf(jv_copy(input), stderr, 0);
  return input;
}
