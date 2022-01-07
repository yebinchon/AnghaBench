
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jv_copy (int ) ;
 int minmax_by (int ,int ,int) ;

__attribute__((used)) static jv f_min(jq_state *jq, jv x) {
  return minmax_by(x, jv_copy(x), 1);
}
