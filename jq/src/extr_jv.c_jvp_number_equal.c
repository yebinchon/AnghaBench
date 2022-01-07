
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 scalar_t__ jvp_number_cmp (int ,int ) ;

__attribute__((used)) static int jvp_number_equal(jv a, jv b) {
  return jvp_number_cmp(a, b) == 0;
}
