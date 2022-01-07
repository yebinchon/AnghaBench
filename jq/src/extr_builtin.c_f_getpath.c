
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int _jq_path_append (int *,int ,int ,int ) ;
 int jv_copy (int ) ;
 int jv_getpath (int ,int ) ;

__attribute__((used)) static jv f_getpath(jq_state *jq, jv a, jv b) {
  return _jq_path_append(jq, a, b, jv_getpath(jv_copy(a), jv_copy(b)));
}
