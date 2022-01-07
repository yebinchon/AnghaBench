
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_array_sized (int) ;

jv jv_array() {
  return jv_array_sized(16);
}
