
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int length_hashed; } ;
typedef TYPE_1__ jvp_string ;



__attribute__((used)) static uint32_t jvp_string_length(jvp_string* s) {
  return s->length_hashed >> 1;
}
