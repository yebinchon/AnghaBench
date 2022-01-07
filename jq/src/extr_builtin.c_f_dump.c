
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jv_dump_string (int ,int ) ;

__attribute__((used)) static jv f_dump(jq_state *jq, jv input) {
  return jv_dump_string(input, 0);
}
