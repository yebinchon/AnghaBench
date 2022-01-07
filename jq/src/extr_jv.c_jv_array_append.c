
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_array_length (int ) ;
 int jv_array_set (int ,int ,int ) ;
 int jv_copy (int ) ;

jv jv_array_append(jv j, jv val) {

  return jv_array_set(j, jv_array_length(jv_copy(j)), val);
}
