
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jv_has (int ,int ) ;

__attribute__((used)) static jv f_has(jq_state *jq, jv a, jv b) { return jv_has(a, b); }
