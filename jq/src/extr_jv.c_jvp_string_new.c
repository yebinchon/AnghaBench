
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int length_hashed; int refcnt; scalar_t__* data; } ;
typedef TYPE_2__ jvp_string ;
struct TYPE_6__ {int * member_0; } ;
struct TYPE_8__ {TYPE_1__ member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_3__ jv ;


 int JVP_FLAGS_STRING ;
 TYPE_2__* jvp_string_alloc (int) ;
 int memcpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static jv jvp_string_new(const char* data, uint32_t length) {
  jvp_string* s = jvp_string_alloc(length);
  s->length_hashed = length << 1;
  if (data != ((void*)0))
    memcpy(s->data, data, length);
  s->data[length] = 0;
  jv r = {JVP_FLAGS_STRING, 0, 0, 0, {&s->refcnt}};
  return r;
}
